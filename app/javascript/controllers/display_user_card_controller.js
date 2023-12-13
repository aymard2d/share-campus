import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-user-card"
export default class extends Controller {
  static targets = ["card", "list", "users", "form", "input"]
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
    console.log("hello");

    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    if (this.inputTarget.value !== "") {
      fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.usersTarget.outerHTML = data
      })
    } else {
      this.usersTarget.outerHTML
    }
  }
}
