///* 
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//
//
//// Assuming getRequestCountByMonth returns an array of objects { serviceTypeID, requestCount }
//async function fetchRequestCounts(year, month) {
//    try {
//        const response = await fetch(`/getRequestCount?year=${year}&month=${month}`); // Adjust the endpoint as per your backend API
//        if (!response.ok) {
//            throw new Error('Network response was not ok');
//        }
//        const data = await response.json();
//        return data;
//    } catch (error) {
//        console.error('Error fetching request counts:', error);
//        return [];
//    }
//}
//
//async function drawPieChart() {
//    const year = 2022; // Example year
//    const month = 12;  // Example month
//    const counts = await fetchRequestCounts(year, month);
//    
//    const labels = counts.map(item => item.serviceTypeID);
//    const data = counts.map(item => item.requestCount);
//
//    const ctx = document.getElementById('myPieChart').getContext('2d');
//    new Chart(ctx, {
//        type: 'pie',
//        data: {
//            labels: labels,
//            datasets: [{
//                data: data,
//                backgroundColor: [
//                    'rgba(255, 99, 132, 0.7)',   // Red
//                    'rgba(54, 162, 235, 0.7)',   // Blue
//                    'rgba(255, 206, 86, 0.7)',   // Yellow
//                    // Add more colors as needed
//                ],
//                borderColor: [
//                    'rgba(255, 99, 132, 1)',
//                    'rgba(54, 162, 235, 1)',
//                    'rgba(255, 206, 86, 1)',
//                    // Add more colors as needed
//                ],
//                borderWidth: 1
//            }]
//        },
//        options: {
//            responsive: true,
//            plugins: {
//                legend: {
//                    position: 'top',
//                },
//                tooltip: {
//                    callbacks: {
//                        label: function(tooltipItem) {
//                            return `${labels[tooltipItem.index]}: ${data[tooltipItem.index]}`;
//                        }
//                    }
//                }
//            }
//        }
//    });
//}
//
//drawPieChart();


async function drawPieChart() {
    const year = 2022; // Example year
    const month = 12;  // Example month
    const counts = await fetchRequestCounts(year, month);
    
    const labels = counts.map(item => item.serviceTypeID);
    const data = counts.map(item => item.requestCount);

    // Log labels and data to verify
    console.log(labels);
    console.log(data);

    // Chart.js code to draw the pie chart
    const ctx = document.getElementById('myPieChart').getContext('2d');
    new Chart(ctx, {
        type: 'pie',
        data: {
            labels: labels,
            datasets: [{
                data: data,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.7)',   // Red
                    'rgba(54, 162, 235, 0.7)',   // Blue
                    'rgba(255, 206, 86, 0.7)',   // Yellow
                    // Add more colors as needed
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    // Add more colors as needed
                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
                tooltip: {
                    callbacks: {
                        label: function(tooltipItem) {
                            return `${labels[tooltipItem.index]}: ${data[tooltipItem.index]}`;
                        }
                    }
                }
            }
        }
    });
}
