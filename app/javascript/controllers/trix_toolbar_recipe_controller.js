import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="trix-toolbar-recipe"
export default class extends Controller {
  connect() {
    const toolbar = this.element.previousSibling
    const h2ButtonHTML = '<button type="button" class="trix-button trix-button--icon trix-button--icon-heading-2" data-trix-attribute="heading" title="Subheading" tabindex="-1">H2</button>'
    const h3ButtonHTML = '<button type="button" class="trix-button trix-button--icon trix-button--icon-heading-3" data-trix-attribute="subHeading" title="Subheading" tabindex="-1">H3</button>'
    const once = {
      once: true
    }

    addEventListener("trix-initialize", function(event) {
      const sibling1 = toolbar.querySelector(".trix-button--icon-increase-nesting-level")
      sibling1.insertAdjacentHTML("afterend", h2ButtonHTML)
      const sibling2 = toolbar.querySelector(".trix-button--icon-heading-2")
      sibling2.insertAdjacentHTML("afterend", h3ButtonHTML)
    }, once)
  }
}
