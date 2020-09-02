
var elem = document.querySelector('.main-carousel');
// var flkty = new Flickity( elem, {
//   // options
//   cellAlign: 'left',
//   contain: true
// });

// element argument can be a selector string
//   for an individual element
// var flkty = new Flickity( '.main-carousel', {
//   // options
// });






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



import 'rangeable/dist/rangeable.min.css'
import Rangeable from 'rangeable'

const input = document.querySelector('#toto')


const rangeable = new Rangeable(input, {
  mutiple: true,
  tooltips: "always",
  min: 0,
  max: 10,
  step: 0.5,
  
  value: [0, 10],
  vertical: false,
  controls: undefined,
  onInit: function() {
      // do something when the instance has loaded
  },
  onStart: function() {
      // do something on mousedown/touchstart
  },
  onChange: function(e) {
      // do something when the value changes
    const min = document.querySelector('#rangeMin');
    const max = document.querySelector('#rangeMax');
    console.log(min.value);
    console.log(max.value);
    min.value = e[0]
    max.value = e[1]
    },
  onEnd: function() {
      // do something on mouseup/touchend
  }

});






//// glider

new Glider(document.querySelector('.glider'), {
  slidesToShow: 3,
  slidesToScroll: 3,
  draggable: true,
  dots: '.dots',
  arrows: {
    prev: '.glider-prev',
    next: '.glider-next'
  }
});
