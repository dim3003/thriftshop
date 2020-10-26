// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .




//Create a loop which use each button model id and stores it in an array as local  and then use this array to display the correct models on the your cart page

if (localStorage.getItem('cart')==null){
  localStorage.setItem('cart', '');
}
let error;
let item;
let buttons;
let el;
let sign;
let storage;
let user = [];
let name;
let firstname;
let email;
let street;
let postalCode;
let emailError;
let nameError;
let firstNameError;
let mailformat = /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/igm;
let errorBox;

/*
window.addEventListener('load', function(){
  let cart = [];

  cart = localStorage.getItem('cart');



  let buttons = document.getElementsByClassName("card__add");

  for(let i=0; i< buttons.length; i++){
    let el = buttons[i];

    el = el.firstElementChild.textContent.replace(/\s/g,'');
    let sign = buttons[i].lastElementChild;


    if (cart.indexOf(el)>=0){
      sign.remove();
      buttons[i].lastElementChild.remove();

      var added = document.createElement("div");
      added.textContent="ADDED";
      added.className="card__add--added"

      buttons[i].appendChild(added);
    }

    buttons[i].addEventListener('click', function(){
      el = buttons[i];
      console.log(sign);
      if (cart.indexOf(el)<0){
        cart.push(el);
        localStorage.setItem('cart', cart);

        sign.remove();
        this.lastElementChild.remove();

        var added = document.createElement("div");
        added.textContent="ADDED";
        added.className="card__add--added"

        this.appendChild(added);
      }

    })
  }

})
*/
// do an ajax request with the add button; save the cart of localuser as an hash; loop on this hash to compare it to item id in order to display right button
