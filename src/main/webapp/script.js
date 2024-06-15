$(document).ready(function() {
    $('#loginForm').submit(function(e) {
        var isValid = true;

        $('#username').removeClass('error-input');
        $('#password').removeClass('error-input');
        $('.error-message').remove();

        var username = $('#username').val().trim();
        if (username === '') {
            $('#username').addClass('error-input');
            $('#username').after('<div class="error-message">Please enter your username</div>');
            isValid = false;
        }

        var password = $('#password').val().trim();
        if (password === '') {
            $('#password').addClass('error-input');
            $('#password').after('<div class="error-message">Please enter your password</div>');
            isValid = false;
        }

        if (!isValid) {
            e.preventDefault();
        }
    });
});
