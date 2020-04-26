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

var counter = 1

peepShow()


document.querySelectorAll('.item-cards').forEach(item => {
  item.addEventListener('click', event => {
    // var focusId = myDOMElement.id
    // console.log(event);

    var object = event.path.sort()[1].id

    var itemPriceArray = object.split("-");
    var item = itemPriceArray[0]
    var price = parseInt(itemPriceArray[1]);

    // console.log(item);
    // console.log(price);

    const addingToOrder = document.getElementById(`adding_order${object}`);

    const orderList = document.getElementById('order_list');

    addingToOrder.addEventListener("click", basketFunction)

    function basketFunction() {
      orderList.insertAdjacentHTML('beforeend',
      `<div class="basket-item" id="${item}${counter}" style="display:flex;justify-content:space-between;">
        <p>${item}</p>
        <p>${price}</p>
        <i id="bask${item}${counter}" class="fas fa-trash"></i>
      </div>`);
      var totalPrice = document.getElementById("the-total-price");
      var oldTotal = parseInt(totalPrice.innerHTML.split('£')[1]);
      // console.log();
      var newTotal = oldTotal += price
      totalPrice.innerHTML = ""
      totalPrice.innerHTML = `£${newTotal}.00`
      peepShow()
      // console.log(newTotal);

      var bin = document.getElementById(`bask${item}${counter}`);
      bin.addEventListener('click', event => {
        var bindiv = event.path[1]
        bindiv.remove();
        counter += 1

        peepShow()


        var deletePrice = document.getElementById("the-total-price");
        var refTotal = parseInt(totalPrice.innerHTML.split('£')[1]);

        var newTotal = refTotal -= price
        deletePrice.innerHTML = ""
        deletePrice.innerHTML = `£${newTotal}.00`

      });
    }
  });
})

function peepShow() {
  var x = document.getElementById('bottombasket');

  if (document.getElementsByClassName('basket-item').length > 0) {
    x.style.visibility = 'visible';
  } else {
    x.style.visibility = 'hidden';
  }
}




// const okay = document.querySelectorAll('.fa-trash');
// console.log(okay);

// document.querySelectorAll('.fa-trash').forEach(item => {
//   item.addEventListener('click', event => {
//     console.log(event);
//   });
// })






