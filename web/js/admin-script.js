document.addEventListener('DOMContentLoaded', function() {
    var sidebarLinks = document.querySelectorAll('.nav-link');
    var contentContainer = document.getElementById('content-container');

    sidebarLinks.forEach(function(link) {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            sidebarLinks.forEach(link => link.classList.remove('active'));
            link.classList.add('active');

            fetch(link.getAttribute('href'))
                .then(response => response.text())
                .then(data => {
                    contentContainer.innerHTML = data;
                });
        });
    });
});



