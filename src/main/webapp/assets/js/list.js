window.onload = function() {
    var links = document.querySelectorAll('.line');

    links.forEach(function(link) {
        link.addEventListener('click', function() {
            links.forEach(function(item) {
                item.classList.remove('active');
            });
            this.classList.add('active');
        });
    });
};