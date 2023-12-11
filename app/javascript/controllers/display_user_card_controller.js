import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-user-card"
export default class extends Controller {
  static targets = ["card", "list", "users"]
  connect() {

  }

  remove() {
    this.listTarget.classList.toggle("d-none")
  }

  display(event) {
    event.preventDefault()
    const url = event.currentTarget.href
    console.log(url);
    fetch(url, {
      method: "GET",
      headers: { "Accept": "text/plain" }
    })
    .then(response => response.text())
    .then((data) => {
        this.cardTarget.innerHTML= data
      })
  }

  filterUser(event) {
    event.preventDefault()
    const url = this.usersTarget.href
    console.log(url);
    fetch(url, {
      method: "GET",
      headers: { "Accept": "text/plain" }
    })
    .then(response => response.text())
    .then((data) => {
        this.usersTarget.innerHTML= data
      })
  }
}
