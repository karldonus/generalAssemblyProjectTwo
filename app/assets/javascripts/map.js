$(document).ready(function(){

    var url = "https://api.mapbox.com/v4/geocode/mapbox.places/2306 Rivermont Avenue,Lynchburg,Virginia.json?access_token=pk.eyJ1Ijoia2FybGRvbnVzIiwiYSI6Ijg1ZTY5ZDZjMTUxZTdkMzk1Y2MwOTNjNjQwZDMwNTU2In0.WOrmvw7P5KviJbR_u5febw";

      $.getJSON(url).then(function(response){
        var long = response.features[0].center[0];
        var lat = response.features[0].center[1];

    // Provide your access token
      L.mapbox.accessToken = 'pk.eyJ1Ijoia2FybGRvbnVzIiwiYSI6Ijg1ZTY5ZDZjMTUxZTdkMzk1Y2MwOTNjNjQwZDMwNTU2In0.WOrmvw7P5KviJbR_u5febw';
    // Create a map in the div #map
      var map = L.mapbox.map('map', 'mapbox.streets').setView([lat, long], 13);
        L.marker([lat, long], {
          icon: L.mapbox.marker.icon({
            'marker-size': 'large',
            'marker-symbol': 'building',
            'marker-color': '#D8030C'
          })
        }).addTo(map);
      map.scrollWheelZoom.disable();
    });
  });
