// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// $(document).ready(function () {
//   if ("geolocation" in navigator) { //check geolocation available 
//     //try to get user current location using getCurrentPosition() method
//     navigator.geolocation.getCurrentPosition(function (position) {
//       console.log("Found your location \nLat : " + position.coords.latitude + " \nLang :" + position.coords.longitude);
//       $.ajax({
//         url: "/events/location",
//         type: "get",
//         data: { lat: position.coords.latitude, lon: position.coords.longitude },
//         success: function (serverResponse) {
//           console.log(serverResponse)
//           $('#display_events').html(serverResponse)
//         }
//       });
//     });
//   } else {
//     console.log("Browser doesn't support geolocation!");
//   }
//   $(document).ajaxStart(function () {
//     $("#loadingDiv").css("display", "block");

//   });
//   $(document).ajaxComplete(function () {
//     $("#loadingDiv").css("display", "none");
//     $("#display_events").addClass("display_content");
//   });
// });



//   var firstSeatLabel = 1;

//   $(document).ready(function () {
//     var $cart = $('#selected-seats'),
//       $counter = $('#counter'),
//       $total = $('#total'),
//       sc = $('#seat-map').seatCharts({
//         map: [
//           'ccbcc',
//           'ca_ac',
//           'ccbcc',
//         ],
//         seats: {
//           a: {
//             price: 100,
//             classes: 'vip_seat', //your custom CSS class
//             category: 'First Class'
//           },
//           b: {
//             price: 50,
//             classes: 'semi_vip_seat', //your custom CSS class
//             category: 'Economy Class'
//           },
//           c: {
//             price: 40,
//             classes: 'wished_vip_seat', //your custom CSS class
//             category: 'Economy Class'
//           }

//         },
//         naming: {
//           top: false,
//           getLabel: function (character, row, column) {
//             return firstSeatLabel++;
//           },
//         },
//         legend: {
//           node: $('#legend'),
//           items: [
//             ['f', 'available', 'First Class'],
//             ['e', 'available', 'Economy Class'],
//             ['f', 'unavailable', 'Already Booked']
//           ]
//         },
//         click: function () {
//           if (this.status() == 'available') {
//             //let's create a new <li> which we'll add to the cart items
//             $('<li>' + this.data().category + ' Seat # ' + this.settings.label + ': <b>$' + this.data().price + '</b> <a href="#" class="cancel-cart-item">[cancel]</a></li>')
//               .attr('id', 'cart-item-' + this.settings.id)
//               .data('seatId', this.settings.id)
//               .appendTo($cart);

//             /*
//              * Lets update the counter and total
//              *
//              * .find function will not find the current seat, because it will change its stauts only after return
//              * 'selected'. This is why we have to add 1 to the length and the current seat price to the total.
//              */
//             $counter.text(sc.find('selected').length + 1);
//             $total.text(recalculateTotal(sc) + this.data().price);

//             return 'selected';
//           } else if (this.status() == 'selected') {
//             //update the counter
//             $counter.text(sc.find('selected').length - 1);
//             //and total
//             $total.text(recalculateTotal(sc) - this.data().price);

//             //remove the item from our cart
//             $('#cart-item-' + this.settings.id).remove();

//             //seat has been vacated
//             return 'available';
//           } else if (this.status() == 'unavailable') {
//             //seat has been already booked
//             return 'unavailable';
//           } else {
//             return this.style();
//           }
//         }
//       });

//     //this will handle "[cancel]" link clicks
//     $('#selected-seats').on('click', '.cancel-cart-item', function () {
//       //let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
//       sc.get($(this).parents('li:first').data('seatId')).click();
//     });

//     //let's pretend some seats have already been booked
//     sc.get(['1_2', '4_1', '7_1', '7_2']).status('unavailable');

//   });

//   function recalculateTotal(sc) {
//     var total = 0;

//     //basically find every selected seat and sum its price
//     sc.find('selected').each(function () {
//       total += this.data().price;
//     });

//     return total;
//   }
// });