document.addEventListener('DOMContentLoaded', () => {
    const steps = document.querySelectorAll('.step');
    const stepSelect = document.getElementById('step-select');
    const setActiveBtn = document.getElementById('set-active');
    const setCompletedBtn = document.getElementById('set-completed');
    const setCancelledBtn = document.getElementById('set-cancelled');
    const resetBtn = document.getElementById('reset-progress');
    const timestampsContainer = document.getElementById('timestamps-container');

    function updateStepStatus(stepIndex, status) {
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'updateProgressStatus', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                const response = JSON.parse(xhr.responseText);
                console.log('Status updated:', response);

                steps.forEach((step, index) => {
                    step.classList.remove('active', 'completed', 'cancelled');
                    if (index < stepIndex) {
                        step.classList.add('completed');
                    } else if (index === stepIndex) {
                        step.classList.add(status);
                    }
                });

                // Automatically activate the next step if the current step is completed
                if (status === 'completed' && stepIndex < steps.length - 1) {
                    steps[stepIndex + 1].classList.add('active');
                    console.log('Next step activated:', stepIndex + 1);
                }
                
                // Update the timestamps
                updateTimestamps(response.timestamps);
            }
        };
        xhr.send(`step=${stepIndex}&status=${status}`);
    }

    function updateTimestamps(timestamps) {
        timestampsContainer.innerHTML = '';
        timestamps.forEach((timestamp, index) => {
            const timestampDiv = document.createElement('div');
            timestampDiv.classList.add('timestamp', 'alert', 'alert-success');
            timestampDiv.textContent = `Step ${index + 1}: ${timestamp}`;
            timestampsContainer.appendChild(timestampDiv);
        });
    }

    setActiveBtn.addEventListener('click', () => {
        const stepIndex = parseInt(stepSelect.value, 10);
        updateStepStatus(stepIndex, 'active');
    });

    setCompletedBtn.addEventListener('click', () => {
        const stepIndex = parseInt(stepSelect.value, 10);
        updateStepStatus(stepIndex, 'completed');
    });

    setCancelledBtn.addEventListener('click', () => {
        const stepIndex = parseInt(stepSelect.value, 10);
        updateStepStatus(stepIndex, 'cancelled');
    });

    resetBtn.addEventListener('click', () => {
        steps.forEach((step, index) => {
            step.classList.remove('completed', 'cancelled', 'active');
            if (index === 0) {
                step.classList.add('active');
            }
        });

        // Reset the session attributes on the server
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'updateProgressStatus', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                console.log('Progress reset');
                updateTimestamps([]);
            }
        };
        xhr.send('reset=true');
    });
});
















