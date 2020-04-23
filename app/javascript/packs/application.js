// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import "bootstrap";

const addressInput = document.getElementById('restaurant_address');

if (addressInput) {
  const places = require('places.js');
  const placesAutocomplete = places({
    container: addressInput
  });
}



document.querySelectorAll('.item-cards').forEach(item => {
  item.addEventListener('click', event => {
    // var focusId = myDOMElement.id
    console.log(event);

    var object = event.path.sort()[1].id

    var itemPriceArray = object.split("-")
    var item = itemPriceArray[0]
    var price = itemPriceArray[1]
    console.log(item);
    console.log(price);

    const addingToOrder = document.getElementById(`adding_order${object}`);

    const orderList = document.getElementById('order_list');

    addingToOrder.addEventListener("click", basketFunction)

    function basketFunction() {
      var totalPrice = getElementById("")
      orderList.insertAdjacentHTML('beforeend',
      `<div class="basket-item" style="display:flex;">
        <p>${item}</p>
        <p>${price}</p>
      </div>`);
    }
  });
})







