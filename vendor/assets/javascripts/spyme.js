(function(window){
  "use strict";
  
  var $ = window.jQuery || window.Zepto || window.$;

  var success = function(position) {
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;

    var params = {
      position: {
        latitude: latitude,
        longitude: longitude
      }
    };

    $.post('/spyme/positions',params).done(function(data) {
      console.log(data);
    });
  
  }

  if ("geolocation" in navigator) {
    navigator.geolocation.getCurrentPosition(success);
  }
})(window);