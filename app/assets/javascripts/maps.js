var map;
var marker;
var partyPointer;
var latitude;
var longitude;
var iterator = 0;

function initialize() {

  // a location to set initial map center
  var myCurrentLocation = new google.maps.LatLng(40.7399977, -73.9900976);

  var mapOptions = {
    zoom: 12,
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

function drop() {
  for (var i =0; i < zmarkerArray.length; i++) {
    setTimeout(function() {
      addMarkerMethod();
    }, i * 2000);
  }
}

function partyMarker(latitude, longitude, title) {

  var image = {
    url: 'http://images.colourbox.com/thumb_COLOURBOX6454919.jpg',
    // This marker is 20 pixels wide by 32 pixels tall.
    size: new google.maps.Size(20, 32),
    // The origin for this image is 0,0.
    origin: new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    anchor: new google.maps.Point(0, 32)
  };
  var shadow = {
    url: 'images/beachflag_shadow.png',
    // The shadow image is larger in the horizontal dimension
    // while the position and offset are the same as for the main image.
    size: new google.maps.Size(37, 32),
    origin: new google.maps.Point(0,0),
    anchor: new google.maps.Point(0, 32)
  };
  // Shapes define the clickable region of the icon.
  // The type defines an HTML &lt;area&gt; element 'poly' which
  // traces out a polygon as a series of X,Y points. The final
  // coordinate closes the poly by connecting to the first
  // coordinate.
  var shape = {
      coord: [1, 1, 1, 20, 18, 20, 18 , 1],
      type: 'poly'
  };
 var partyPointer = new google.maps.LatLng(latitude,longitude, title);
    console.log(longitude, latitude, title)
    var marker = new google.maps.Marker({
    position: partyPointer,
    map: map,
    draggable:true,
    // icon: image,
    shape: shape,
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