// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import Alpine from 'alpinejs'
 
window.Alpine = Alpine
 
Alpine.start()
import "trix"
import "@rails/actiontext"

Trix.config.blockAttributes.heading = {
    tagName: "h2",
    terminal: true,
    breakOnReturn: true,
    group: false
}

Trix.config.blockAttributes.subHeading = {
    tagName: "h3",
    terminal: true,
    breakOnReturn: true,
    group: false
}
