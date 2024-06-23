document.addEventListener('DOMContentLoaded', function() {
    let countdownElement = document.getElementById('countdown');
    let progressElement = document.getElementById('progress');
    let countdown = 5;
    
    const interval = setInterval(function() {
        countdown--;
        countdownElement.textContent = `Started after ${countdown}s`;
        progressElement.style.width = `${(countdown / 5) * 100}%`;
        
        if (countdown === 0) {
            clearInterval(interval);
            window.location.href = 'HomePage.jsp'; // Change this URL to the desired page
        }
    }, 1000);
});
