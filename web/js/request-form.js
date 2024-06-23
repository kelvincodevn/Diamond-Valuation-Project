function selectPlan(plan) {
    document.getElementById('selected-plan').value = plan;
    
    const plans = document.querySelectorAll('.pricing-plan');
    plans.forEach(p => p.classList.remove('selected'));
    
    document.getElementById(plan).classList.add('selected');
}

document.getElementById('valuation-form').addEventListener('submit', function(event) {
    event.preventDefault();
    alert('Form submitted! Plan selected: ' + document.getElementById('selected-plan').value);
});
