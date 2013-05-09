$(document).ready(function() {
  function initialize() {
    var mapOptions = {
      center: new google.maps.LatLng(40.7143528, -74.00597309999999),
      zoom: 10,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map-canvas"),
        mapOptions);
  };
});