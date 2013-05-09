$(document).ready(function(){
    $('body').bind('ajax:success', function(e, data) {
        $('.comments').append(data);
    });
});