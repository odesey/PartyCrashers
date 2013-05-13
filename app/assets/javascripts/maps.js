
var map;
var marker;
var partyPointer;
var latitude;
var longitude;

function initialize() {

  // a location to set initial map center
  var myCurrentLocation = new google.maps.LatLng(40.7399977, -73.9900976);

  var mapOptions = {
    zoom: 11,
    center: myCurrentLocation,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }

  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

  var marker = new google.maps.Marker({
      position: myCurrentLocation,
      map: map,
      draggable:true,
      animation: google.maps.Animation.DROP,
      title: "So many parties to crash!"
  });
};

function partyMarker(latitude, longitude, title) {
 var partyPointer = new google.maps.LatLng(latitude,longitude, title);
    console.log(longitude, latitude, title)
    var marker = new google.maps.Marker({
    position: partyPointer,
    map: map,
    draggable:true,
    animation: google.maps.Animation.DROP,
    title: title
    }); 
};
function toggleBounce() {

  if (marker.getAnimation() != null) {
    marker.setAnimation(null);
  } else {
    marker.setAnimation(google.maps.Animation.BOUNCE);
  };
};
