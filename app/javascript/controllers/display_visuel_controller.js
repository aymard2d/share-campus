import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-visuel"
export default class extends Controller {
  static targets = ['preview', 'course']
  connect() {
    console.log('connecté!')
  }

  display(event) {
    event.preventDefault()
    this.previewTarget.classList.add("d-none");
    this.courseTarget.classList.remove("d-none")
  }
}
