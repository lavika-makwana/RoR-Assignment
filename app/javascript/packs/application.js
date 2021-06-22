require('jquery')
require('popper.js')
require('@rails/ujs').start()
require('turbolinks').start()
require('@rails/activestorage').start()
require('channels')

window.jQuery = $;
window.$ = $;

require('packs/main.js');