$(document).ready(function() {

  var images = ['image2.jpg', 'image3.jpg', 'image4.jpg', 'image5.jpg', 'image6.jpg', 'image7.jpg', 'image8.jpg', 'image9.jpg', 'image10.jpg'];

  function changeBackground() {
    $('body').css({'background-image': 'url(/assets/' + images[Math.floor(Math.random() * images.length)] + ')'});

    setInterval( function() {
      $('body').css({'background-image': 'url(/assets/' + images[Math.floor(Math.random() * images.length)] + ')'});
    }, 5000);
  }

  changeBackground();

});