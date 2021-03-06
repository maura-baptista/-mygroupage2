function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var originAddress = document.getElementById('origin-address');
    var destinationAddress = document.getElementById('destination-address');
    var leadOriginAddress = document.getElementById('lead_origin-address');
    var leadDestinationAddress = document.getElementById('lead_destination-address');
    var countryAddress = document.getElementById('mover_country_address');
    var departureLocationAddress = document.getElementById('departure_location_address');
    var arrivalLocationAddress = document.getElementById('arrival_location_address');

    if (originAddress) {
      var autocomplete = new google.maps.places.Autocomplete(originAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(originAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
    if (destinationAddress) {
      var autocomplete = new google.maps.places.Autocomplete(destinationAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(destinationAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
    if (leadOriginAddress) {
      var autocomplete = new google.maps.places.Autocomplete(leadOriginAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(leadOriginAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
    if (leadDestinationAddress) {
      var autocomplete = new google.maps.places.Autocomplete(leadDestinationAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(leadDestinationAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
     if (countryAddress) {
      var autocomplete = new google.maps.places.Autocomplete(countryAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(countryAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
    if (departureLocationAddress) {
      var autocomplete = new google.maps.places.Autocomplete(departureLocationAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(departureLocationAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
    if (arrivalLocationAddress) {
      var autocomplete = new google.maps.places.Autocomplete(arrivalLocationAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(arrivalLocationAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }


  });
}


export { autocomplete };

