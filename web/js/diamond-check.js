function runCheck() {
    const certificateId = document.getElementById('certificateId').value;
    if (certificateId) {
        alert(`Running check for Certificate ID: ${certificateId}`);
        // Here you can add the logic to perform the actual check
    } else {
        alert('Please enter a Certificate ID');
    }
}
