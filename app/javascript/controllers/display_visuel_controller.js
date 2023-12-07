import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-visuel"
export default class extends Controller {
  connect() {
    console.log("hello");
  }
}
