(function(window){
  "use strict";
  
  var $ = window.jQuery || window.Zepto || window.$;

  var success = function(location) {
    var latitude = location.coords.latitude;
    var longitude = location.coords.longitude;

    var params = {
      location: {
        latitude: latitude,
        longitude: longitude
      }
    };

    $.post('/spyme/locations',params).done(function(data) {
      console.log(data);
    });
  
  }

  if ("geolocation" in navigator) {
    navigator.geolocation.getCurrentPosition(success);
  }
})(window);