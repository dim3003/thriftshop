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

window.addEventListener('load', function(){
  let cart = [];

  let buttons = document.getElementsByClassName("card__add");

  for(let i=0; i< buttons.length; i++){
    buttons[i].addEventListener('click', function(){
      let el = this.firstElementChild.textContent.replace(/\s/g,'');
      let sign = this.lastElementChild;
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
