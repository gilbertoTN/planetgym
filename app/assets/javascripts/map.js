(function() {
  window.onload = function() {
    // Creating an object literal containing the properties
    // we want to pass to the map
    var options = {
      zoom: 12,
      center: new google.maps.LatLng(40.7257, -74.0047),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    // Creating the map
    var map = new google.maps.Map(document.getElementById('map'), options);


var image = new google.maps.MarkerImage(
  'assets/logo.png',
  new google.maps.Size(32, 37), // The Size
  new google.maps.Point(65, 0), // The origin
  new google.maps.Point(16, 35) // The anchor
  )


    // Adding a marker to the map
    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(40.7257, -74.0047),
      map: map,
      title: 'Click me',
      icon: image    });


    var infowindow = new google.maps.InfoWindow({
      content:'<div class="condon"><h1 class="titulo1">Hello world<h2></div>'
    });

    // Adding a click event to the marker
    google.maps.event.addListener(marker, 'click', function() {
    // Calling the open method of the infoWindow
    infowindow.open(map, marker);
    });

  };
})();
