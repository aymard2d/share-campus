import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-user-card"
export default class extends Controller {
  static targets = ["card"]
  connect() {
    console.log("hello");
  }

  display(event) {
    event.preventDefault()
    const url = event.currentTarget.href
    fetch(url, {
      method: "GET",
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then((data) => {
        console.log(this.cardTarget);
        this.cardTarget.innerHTML= data
      })
  }
}
