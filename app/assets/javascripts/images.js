$(document).ready(function(){
    $('body').bind('ajax:success', function(e, data) {
        $('.images').append('<img id="theImg" src='+data+'/>');
        console.log(data);
    });
});