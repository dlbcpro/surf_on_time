// flatpickr
import flatpickr from "flatpickr";

const initFlatpickr = () => {

  flatpickr(".start-date", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "d-m-Y",
  })
 flatpickr(".end-date", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "d-m-Y",
  })
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
