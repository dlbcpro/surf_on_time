// flatpickr
import flatpickr from "flatpickr";
import { French } from "flatpickr/dist/l10n/fr.js"

const initFlatpickr = () => {


  flatpickr(".start-date", {
    "locale": French,
    altInput: true,
    altFormat: "d M Y",
    dateFormat: "d M Y",
  })
 flatpickr(".end-date", {
    "locale": French,
    altInput: true,
    altFormat: "d M Y",
    dateFormat: "d M Y",
  })

//   flatpickr(".test", {
//     mode: "range",
//     // minDate: "today",
//     dateFormat: "Y-m-d",

// })
}



  export { initFlatpickr }








  //  if (bookingForm) {
  //    const bookings = JSON.parse(bookingForm.dataset.bookings);
  //    flatpickr("#range_start", {
  //      plugins: [new rangePlugin({ input: "#range_end"})],
  //      minDate: "today",
  //      inline: true,
  //      dateFormat: "Y-m-d",
  //      "disable": bookings,
  //    })
  //  }
