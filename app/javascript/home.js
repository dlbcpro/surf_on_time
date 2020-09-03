const rangeMin = document.getElementById("rangeMin");
const rangeMax = document.getElementById("rangeMax");
const ranger = document.getElementById("toto");

function level() {
  
  if (ranger){
    ranger.addEventListener("input", function ran() {
    console.log(rangeMin.value);
    console.log("lalala");
    console.log(rangeMin.value);
    showSliderValue();
  });
  }
}



function showSliderValue() {
  
  const niveau = document.querySelector('.niveau');

  if(1.5 < rangeMax.value && rangeMax.value < 3.5){
    niveau.innerHTML = "Intermédiaire";
  } else if(rangeMax.value >= 3.5){
    niveau.innerHTML = "Expert";
  } else {
    niveau.innerHTML = "Débutant";
  }
}




import Rangeable from 'rangeable'

function range() {
    const input = document.querySelector('#toto')

  if (input) {
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
  }
}



//// glider

function gliderc() {
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
}



export { level, range, gliderc };
