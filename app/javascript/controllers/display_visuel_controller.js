import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-visuel"
export default class extends Controller {
  static targets = ['preview'];
  connect() {
  }

  display(event) {
    console.log(course.currentTarget)

    event.preventDefault()
    const url = course.currentTarget.href
    fetch(url, {
      method: "GET",
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data);
        this.previewTarget.outerHTML = data
      })
  }
}
