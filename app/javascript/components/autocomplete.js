function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var originAddress = document.getElementById('origin-address');
    var destinationAddress = document.getElementById('destination-address');

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


  });
}

export { autocomplete };