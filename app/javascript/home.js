const rangeSlider = document.getElementById("rs-range-line");
const rangeBullet = document.getElementById("rs-bullet");
const niveau = document.querySelector('.niveau');

if (rangeSlider) {
  rangeSlider.addEventListener("input", function ran() {
    showSliderValue();
  });
}

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

if (input) {
  const rangeable = new Rangeable(input, {
    mutiple: true,
    tooltips: "always",
    min: 0,
    max: 100,
    step: 1,

    value: [50, 70],
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


      document.querySelector('#rangeMin').value = e[0]
      document.querySelector('#rangeMax').value = e[1]
      },
    onEnd: function() {
        // do something on mouseup/touchend
    }
  });
}





//// glider

const gliderContainer = document.querySelector('.glider');

if (gliderContainer) {
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
}
