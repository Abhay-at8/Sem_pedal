var map;
var marker;

// function to initialize the map object
function initMap() {
    // creating map object
    map = new google.maps.Map(document.getElementById("map"), {
        center: { lat: 28.360362, lng: 75.584797 },
        zoom: 16,
        mapTypeControl: false,
        fullscreenControl: false,
        streetViewControl: false
    });
    // creating marker object
    marker = new google.maps.Marker({
        position: { lat: 28.360362, lng: 75.584797 },
        map: map,
        title: "Other user's location"
    });
}

// function to fetch the location data of the other user from the Django view and show it on the map
function showOtherUserLocation() {
    // fetching the user id of the other user from the HTML element
    console.log("in showOtherUserLocation")
    var other_user_id = document.getElementById("user_id").value;
    console.log("Userid in map js")
    console.log(other_user_id)
    var url = "get_location/";
    // var other_user_id = $("#user_id").val();
    // using the jQuery ajax() method to fetch the data from the Django view
    $.ajax({
        url: url,
        method: "GET",
        data: {
            user_id: other_user_id
        },
        // specifying a callback function to handle the response from the server
        success: function (response) {
            var lat = response.lat;
            var lon = response.lon;
            console.log("lat:", lat);
            console.log("lon:", lon);
            // position object with the latitude and longitude values converting the float values
            var position = { lat: parseFloat(lat), lng: parseFloat(lon) };
            // updating marker and center position with new coordinates
            marker.setPosition(position);
            map.setCenter(position);
        },
        error: function (error) {
            console.log(error);
        }
    });
}

window.onload = initMap;

setInterval(showOtherUserLocation, 10000);
