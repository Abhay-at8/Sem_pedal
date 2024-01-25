// In script.js
// function to send the current position to the Django view using AJAX
function sendPosition(position) {

    var lat = position.coords.latitude;
    var lon = position.coords.longitude;

    var user_id = $("#user_id").val();
    var url = "save_location/";
    console.log(user_id);
    console.log(url);
    // jQuery ajax() method to send the data to the Django view
    $.ajax({
        // specifying the URL of the Django view
        url: url,
        // specifying the method to use, which should match the Django view
        method: "POST",
        // specifying the data to send, which should match the request.POST dictionary
        data: {
            lat: lat,
            lon: lon,
            user_id: user_id
        },
        // specifying a callback function that will handle the response from the server
        success: function (response) {
            console.log(response);
        },
        // specifying a callback function that will handle any errors
        error: function (error) {
            console.log(error);
        }
    });
}

function displayPosition() {
    // using Geolocation API to get current position
    navigator.geolocation.getCurrentPosition(function (position) {
        var lat = position.coords.latitude;
        var lon = position.coords.longitude;

        var pos = "Latitude: " + lat + ", Longitude: " + lon;
        // using the jQuery load() method to load the position into the div element
        $("#position").html(pos);
        // using style.display to hide the element
        document.getElementById("position").style.display = "none";
        // calling the sendPosition() function to send the data to the Django view
        sendPosition(position);
    });
}

// calling the displayPosition() function when the page loads
$(document).ready(displayPosition);

// calling the displayPosition() function every 20 seconds to update the position
setInterval(displayPosition, 10000);