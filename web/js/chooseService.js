function chooseService(service, element) {
            // Remove highlight from all cards
            var cards = document.getElementsByClassName('pricing-card');
            for (var i = 0; i < cards.length; i++) {
                cards[i].classList.remove('selected');
            }
            // Add highlight to the selected card
            element.classList.add('selected');
        }

        document.getElementById('currentYear').textContent = new Date().getFullYear();


