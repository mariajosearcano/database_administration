const formProcedures = document.getElementById('form-procedures');

formProcedures.addEventListener('submit', async function (event) {
    event.preventDefault();

    // Get which button was clicked
    const submitButton = document.activeElement;
    const endpoint = submitButton.name === 'calculate_income'
        ? '/api/calculate-income/'
        : '/api/calculate-expenses/';

    try {
        const response = await fetch(endpoint, {
            method: 'POST',
            headers: {
                'X-CSRFToken': getCsrfToken(), // Make sure to get the CSRF token
            },
        });

        const data = await response.json();

        if (!response.ok) throw new Error(data.message || 'Server error');

        let totalAmount = Number(data.message);
        let formattedAmount = formatMoney(totalAmount);

        Swal.fire({
            title: data.title,
            text: formattedAmount,
            icon: 'success'
        });
    } catch (error) {
        console.error('Error:', error);
        Swal.fire({
            title: 'Error',
            text: error.message || 'Error processing request',
            icon: 'error'
        });
    }
});

// Helper function to get CSRF token
function getCsrfToken() {
    return document.querySelector('[name=csrfmiddlewaretoken]').value;
}

function formatMoney(amount) {
    return new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD'
    }).format(amount);
}

