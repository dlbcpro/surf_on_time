//// FLECHES
const arrow = () => {
  document.querySelectorAll("#wind-arrow").forEach(elem => {
    const greenArrow = elem.querySelector(".green-arrow");
    const redArrow = elem.querySelector(".red-arrow");
    const yellowArrow = elem.querySelector(".yellow-arrow");

    const arrow = elem.querySelector(".arrow");
    const degres = 360 - elem.dataset.angle;
   

    greenArrow.style.display = 'none';
    redArrow.style.display = 'none';
    yellowArrow.style.display = 'none';

      if(elem.dataset.direction === "Onshore"){
      redArrow.style.display = 'inline-block';
      redArrow.style.transform = `rotate(${degres}deg)`;
    } else if(elem.dataset.direction === "Offshore"){
      greenArrow.style.display = 'inline-block';
      greenArrow.style.transform = `rotate(${degres}deg)`;
    } else {
      yellowArrow.style.display = 'inline-block';
      yellowArrow.style.transform = `rotate(${degres}deg)`;
    };
  });
};

//// WEATHER
const meteo = () => {

  document.querySelectorAll("#weather").forEach(elem => {
    const soleilNuage = elem.querySelector(".soleil-nuage2");
    const soleil = elem.querySelector(".soleil");
    const pluie = elem.querySelector(".pluie");
    const orage = elem.querySelector(".orage");
    const nuage = elem.querySelector(".nuage");
    
    soleilNuage.style.display = "none";
    soleil.style.display = "none";
    pluie.style.display = "none";
    orage.style.display = "none";
    nuage.style.display = "none";

    const dataWeather = elem.dataset.weather;
    console.log(dataWeather);
    if(dataWeather == "Light Rain" || dataWeather == "Drizzle" || dataWeather == "Light Showers" || dataWeather == "Brief Showers Possible" || dataWeather == "Brief Showers" || dataWeather == "Light Showers Possible" ) {
      pluie.style.display = 'inline-block';
    } else if(dataWeather == "Clear" || dataWeather == "Sunny" || dataWeather == "Fair") {
      soleil.style.display = 'inline-block';
    } else if(dataWeather == 'Overcast' || dataWeather == "Cloudy" || dataWeather == "Mostly Cloudy") {
      nuage.style.display = 'inline-block';
    } else if(dataWeather == 'Heavy Thunderstorms') {
      orage.style.display = 'inline-block';
    }  else if(dataWeather == 'Mist' || dataWeather == "Fog") {
      soleilNuage.style.display = 'inline-block';
    };
  });
};

export { meteo, arrow };
