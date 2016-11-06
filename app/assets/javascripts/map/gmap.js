// $(window).load(function() {
//   loadScript();
// });
//
// var map;
// var poly;
// function initialize() {
//
//         var mapOptions = {
//           center: new google.maps.LatLng(-34.397, 150.644),
//           zoom: 8,
//           mapTypeId: google.maps.MapTypeId.NORMAL
//         };
//         map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
//         console.log("I'm in");
//    }
//
//    GMaps.geolocate = function(options) {
//   var complete_callback = options.always || options.complete;
//
//   if (navigator.geolocation) {
//     navigator.geolocation.getCurrentPosition(function(position) {
//       options.success(position);
//
//       if (complete_callback) {
//         complete_callback();
//       }
//     }, function(error) {
//       options.error(error);
//
//       if (complete_callback) {
//         complete_callback();
//       }
//     }, options.options);
//   }
//   else {
//     options.not_supported();
//
//     if (complete_callback) {
//       complete_callback();
//     }
//   }
// };
//
//
// //    GMaps.geolocate({
// //   success: function(position) {
// //     map.setCenter(position.coords.latitude, position.coords.longitude);
// //   },
// //   error: function(error) {
// //     alert('Geolocation failed: '+error.message);
// //   },
// //   not_supported: function() {
// //     alert("Your browser does not support geolocation");
// //   },
// //   always: function() {
// //     alert("Done!");
// //   }
// // });
//
// function loadScript() {
// 	console.log("map loading ...");
//   var script = document.createElement('script');
//   script.type = 'text/javascript';
//   'https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCynGT5eEcpQqXR04EF2UuHrq8MEUaYHRA&sensor=false&libraries=drawing'
//   script.src = 'https://maps.googleapis.com/maps/api/js?sensor=false' +
//     '&v=3.14'+
//     '&key=AIzaSyCynGT5eEcpQqXR04EF2UuHrq8MEUaYHRA'+
//     //'&libraries=drawing'+
//     '&callback=initialize';
//   document.body.appendChild(script);
// }
