// const totalExpenses = document.getElementById('expenses-data').dataset.total;
// const totalIncome = document.getElementById('income-data').dataset.total;

// $('#expenses').click( function() {
//     Swal.fire({
//         title: "Total de Egresos",
//         text: `$${totalExpenses}`,
//         icon: "warning"
//     });
// });
//
// $('#income').click( function() {
//     Swal.fire({
//         title: "Total de Ingresos",
//         text: `$${totalIncome}`,
//         icon: "warning"
//     });
// });


// const formMigration = document.getElementById('form-migration');
// formMigration.addEventListener('submit', function (event) {
//     event.preventDefault();
//     const data = new FormData(formMigration);
//     const url = formMigration.action;
//     const method = formMigration.method;
//
//     fetch(url, {
//         method: method,
//         body: data
//     })
//         .then(response => response.json())
//         .then(data => {
//             if (data.status === 'success') {
//                 Swal.fire({
//                     title: data.title,
//                     text: data.message,
//                     icon: data.status
//                 });
//                 formMigration.reset();
//             } else {
//                 Swal.fire({
//                     title: data.title,
//                     text: data.message,
//                     icon: data.status
//                 });
//             }
//         })
//         .catch(error => {
//             console.error('Error:', error);
//         });
// });


// const formProcedures = document.getElementById('form-procedures');
// formProcedures.addEventListener('submit', function (event) {
//     event.preventDefault();
//     const data = new FormData(formProcedures);
//     const url = formProcedures.action;
//     const method = formProcedures.method;
//
//     fetch(url, {
//         method: method
//     })
//         .then(response => response.json())
//         .then(data => {
//             if (data.status === 'success') {
//                 Swal.fire({
//                     title: data.title,
//                     text: `$${data.message}`,
//                     icon: 'success'
//                 });
//                 formProcedures.reset();
//             } else {
//                 Swal.fire({
//                     title: data.title,
//                     text: data.message,
//                     icon: 'error'
//                 });
//             }
//         })
//         .catch(error => {
//             console.error('Error:', error);
//
//             Swal.fire({
//                 title: 'Error',
//                 text: 'Error al procesar los datos',
//                 icon: 'error'
//             });
//         });
// });

// const formProcedures = document.getElementById('form-procedures');
// formProcedures.addEventListener('submit', function (event) {
//     event.preventDefault();
//     const data = new FormData(formProcedures);
//     const url = formProcedures.action;
//     const method = formProcedures.method;
//
//     fetch(url, {
//         method: method
//     })
//         .then(response => response.text())
//         .then(text => {
//             try {
//                 const json = JSON.parse(text);
//                 if (json.status === 'success') {
//                     Swal.fire({
//                         title: json.title,
//                         text: `$${json.message}`,
//                         icon: 'success'
//                     });
//                     formProcedures.reset();
//                 } else {
//                     Swal.fire({
//                         title: json.title,
//                         text: json.message,
//                         icon: 'error'
//                     });
//                 }
//             } catch (error) {
//                 console.error('Response is not JSON:', text);
//                 throw new Error('Response is not JSON');
//             }
//         })
//         .catch(error => {
//             console.error('Error:', error);
//
//             Swal.fire({
//                 title: 'Error',
//                 text: 'Error al procesar los datos',
//                 icon: 'error'
//             });
//         });
// });

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

