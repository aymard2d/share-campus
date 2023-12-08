import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-visuel"
export default class extends Controller {
  static targets = ['preview', 'course', "eva"]
  connect() {
  }

  display(event) {
    console.log(event.currentTarget)
    console.log(this.evaTarget.href)
    console.log("ok")
    event.preventDefault()
    const url = event.currentTarget.href
    fetch(url, {
      method: "GET",
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.previewTarget.outerHTML = data
      })
  }
}
