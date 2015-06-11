var eventloop  = []

function apiCall(){
  var city = $('.city-info h1')[0].innerHTML;
    console.log(city);
    $.ajax({
      type: 'GET',
      url: 'https://www.eventbriteapi.com/v3/events/search/?token='+EVENTBRITE_KEY+'&venue.city=' + city// + '&categories=110'
    }).done(function(data) {
      // for (i = 0; i < data.events.length; i++) {
        console.log(data.events[0].start.local)
      // };
      $('.city-event').empty();
      $('.city-image').empty();
      $.each(data.events, function(index, value) {
        $('.city-info').append('<tr><td>' + data.events[index].name.html + '</td><td><img src=' + data.events[index].logo.url+'></td></tr>');       
      })
    });
}
function searchCities(e){
  console.log("inside search cities function");

  e.preventDefault(); // this STOPS the page refreshing as that is the default value of the submit event
  var city = e.currentTarget.previousElementSibling.value;
  console.log(city);
  var data;

  $.ajax({
      // method: "GET",
      url: "/cities",
      dataType: "json",
      data: {city: city}

    }).done(function(data) {
      var city = this.url.split("=")[1]
      $(data).each(function(){
        if (this.name == city){
          var id = this.id;
          var path = "http://localhost:3000/cities/" + id;
          window.location.href = path;
        }
    })
  });
}

$(document).ready(function() {

  var searchButton = $('#searchButton');
  var searchTextBox = $('#search-keyword');
  searchButton.on('click', searchCities);
  $('#show').on('click', apiCall); 

});