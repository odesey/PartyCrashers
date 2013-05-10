  // function initialize() {
  //   var mapOptions = {
  //     center: new google.maps.LatLng(40.7143528, -74.00597309999999),
  //     zoom: 10,
  //     mapTypeId: google.maps.MapTypeId.ROADMAP
  //   };
  //   var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  // }
  // google.maps.event.addDomListener(window, 'load', initialize);


var map;

// intializes a new google map from API
function initialize() {

  // a location to set initial map center
  var myCurrentLocation = new google.maps.LatLng(40.7399977, -73.9900976);

  var mapOptions = {
    zoom: 13,
    center: myCurrentLocation,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }

  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

  var marker = new google.maps.Marker({
      position: myCurrentLocation,
      map: map,
      title: "So many parties to crash!"
  });
};