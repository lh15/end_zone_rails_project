// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function () {
  if ("geolocation" in navigator) { //check geolocation available 
    //try to get user current location using getCurrentPosition() method
    navigator.geolocation.getCurrentPosition(function (position) {
      console.log("Found your location \nLat : " + position.coords.latitude + " \nLang :" + position.coords.longitude);
      $.ajax({
        url: "/events/location",
        type: "get",
        data: { lat: position.coords.latitude, lon: position.coords.longitude },
        success: function (serverResponse) {
          console.log(serverResponse)
          $('#display_events').html(serverResponse)
        }
      });
    });
  } else {
    console.log("Browser doesn't support geolocation!");
  }
  $(document).ajaxStart(function () {
            $("#loadingDiv").css("display", "block");

        });
        $(document).ajaxComplete(function () {
            $("#loadingDiv").css("display", "none");
            $("#display_events").addClass("display_content");
        });
});