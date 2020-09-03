const initFilter = () => {
  document.querySelectorAll('#formFilter input, #formFilter select').forEach((input) => {
    input.addEventListener('change', (e) => {
      const elem = document.getElementById('formFilter') // or $('#myform')[0] with jQuery
      Rails.fire(elem, 'submit');
    })
  })
}

export { initFilter }


