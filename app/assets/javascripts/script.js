$(document).ready(function() {
//   jQuery.get(uri,function(r){
//     current_temp_C  =r.data.current_condition[0].temp_C;
//      alert(current_temp_C);
// },"json").fail(function(jqXHR, ajaxOpts, thrownError){
//     alert(thrownError);
// });


timer = setInterval( function() {
    var images = ['image1.jpg', 'image2.jpg', 'image3.jpg', 'image4.jpg', 'image5.jpg', 'image6.jpg', 'image7.jpg', 'image8.jpg', 'image9.jpg', 'image10.jpg'];
$('html').css({'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')'}, 30000);
    });
  });