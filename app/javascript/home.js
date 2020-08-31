
var elem = document.querySelector('.main-carousel');
var flkty = new Flickity( elem, {
  // options
  cellAlign: 'left',
  contain: true
});

// element argument can be a selector string
//   for an individual element
var flkty = new Flickity( '.main-carousel', {
  // options
});







const rangeSlider = document.getElementById("rs-range-line");
const rangeBullet = document.getElementById("rs-bullet");
const niveau = document.querySelector('.niveau');

rangeSlider.addEventListener("input", function ran() {
  showSliderValue();
});

function showSliderValue() {
  rangeBullet.innerHTML = rangeSlider.value;
  var bulletPosition = (rangeSlider.value /rangeSlider.max);
  var range = rangeBullet.style.left = (bulletPosition * 212) + "px";
  console.log(range);
  
  if(79 < bulletPosition*212 && bulletPosition*212 < 159){
    niveau.innerHTML = "Intermédiaire";
  } else if(bulletPosition*212 >= 159){
    niveau.innerHTML = "Expert";
  } else {
    niveau.innerHTML = "Débutant";
  }
}



// new Glider(document.querySelector('.glider'), {
//   slidesToShow: 5,
//   slidesToScroll: 5,
//   draggable: true,
//   dots: '.dots',
//   arrows: {
//     prev: '.glider-prev',
//     next: '.glider-next'
//   }
// });
