document.addEventListener("DOMContentLoaded", function () {

    const departmentChart =
        document.getElementById("departmentChart");

    if (departmentChart) {

        new Chart(departmentChart, {

            type: 'bar',

            data: {
                labels: [
                    'CSE',
                    'ECE',
                    'EEE',
                    'MECH'
                ],

                datasets: [{
                    label: 'Average Marks',

                    data: [
                        82,
                        75,
                        88,
                        70
                    ]
                }]
            }
        });
    }

    const resultChart =
        document.getElementById("resultChart");

    if (resultChart) {

        new Chart(resultChart, {

            type: 'pie',

            data: {

                labels: [
                    'PASS',
                    'FAIL'
                ],

                datasets: [{

                    data: [
                        85,
                        15
                    ]
                }]
            }
        });
    }

    const distributionChart =
        document.getElementById("distributionChart");

    if (distributionChart) {

        new Chart(distributionChart, {

            type: 'bar',

            data: {

                labels: [
                    '0-40',
                    '41-60',
                    '61-80',
                    '81-100'
                ],

                datasets: [{

                    label: 'Students',

                    data: [
                        5,
                        12,
                        20,
                        18
                    ]
                }]
            }
        });
    }

});