function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var originAddress = document.getElementById('origin-address');
    var destinationAddress = document.getElementById('destination-address');
    var leadOriginAddress = document.getElementById('lead_origin-address');
    var leadDestinationAddress = document.getElementById('lead_destination-address');

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


  });
}


export { autocomplete };

