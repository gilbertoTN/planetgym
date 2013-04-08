(function() {

  // Defining variables that need to be available to some functions
  var map, infoWindow;

  window.onload = function() {
    // Creating an object literal containing the properties
    // we want to pass to the map
    var options = {
      zoom: 15,
      center: new google.maps.LatLng(25.738647, -100.355483),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    // Creating the map
    map = new google.maps.Map(document.getElementById('map'), options);

    // Adding a marker to the map
    var mamado = new google.maps.MarkerImage('assets/markergym.png');
    var shadow = new google.maps.MarkerImage('assets/shadow.png',null,null,new google.maps.Point(25, 65) );

    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(25.738647, -100.355483),
      map: map,
      title: 'Planet GYM (haz click aqui)',
      icon: mamado,
      shadow: shadow
    });

      google.maps.event.addListener(marker, 'click', function() {
          infoWindow = new google.maps.InfoWindow({
            content: '<div id="info">' +
            '<img src="assets/logo.png" alt="" />' +
            '<h2>PLANET GYM</h2>' +
            '<p>Direccion:</p>' +
            '<p>Uxmal, Col. Unidad Modelo</p>' +
            '<p>Monterrey, Nuevo Leon</p>' +
          '<p><a href="http://www.planetgym.com">Sitio Oficial</a></p>' +
            '</div>',
            position: new google.maps.LatLng(25.738647, -100.355483)
            });
          infoWindow.open(map);

      });


  };
})();
