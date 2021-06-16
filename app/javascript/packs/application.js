require('@rails/ujs').start()
require('turbolinks').start()
require('@rails/activestorage').start()
require('channels')
require('jquery')
require('bootstrap')
require('popper.js')

import '../stylesheets/application';
// require("stylesheets/application.scss")
// require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")
// // import the bootstrap javascript module
// import 'bootstrap/dist/js/bootstrap'
// import "bootstrap/dist/css/bootstrap";

// // import the application.scss we created for the bootstrap CSS (if you are not using assets stylesheet)
// import "../stylesheets/application"
// var jQuery = require('jquery')

// // include jQuery in global and window scope (so you can access it globally)
// // in your web browser, when you type $('.div'), it is actually refering to global.$('.div')
// global.$ = global.jQuery = jQuery;
// window.$ = window.jQuery = jQuery;

// // const images = require.context('../images', true)
// // const imagePath = (name) => images(name, true)