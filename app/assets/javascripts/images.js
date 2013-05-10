$(document).ready(function(){
    $('body').bind('ajax:success', function(e, data) {
        $('.images').append(data);
        console.log(data);
    });
});