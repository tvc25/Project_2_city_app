  var form = $('#search');
  var input = $('#search-keyword');
  var select = $('#search-type');
  var results = $('#results');
  var userInput = input.val();
  var searchType = $(':selected').val();

function searchCities(e){
    e.preventDefault(); // this STOPS the page refreshing as that is the default value of the submit event
  $.ajax({
    type: 'GET',
     url: 'https://www.eventbriteapi.com/v3/events/search/?token='+EVENTBRITE_KEY+'&venue.city='+ userInput
  }).done(function(data) {
    console.log(this);
});
}

var searchButton

  // Define our variables
  searchButton = document.getElementById('searchButton');
  // Add event listeners
// add event listeners to the elements
  select.on('change', searchCities);
