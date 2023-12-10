import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"


// Connects to data-controller="library-subscription"
export default class extends Controller {
  static values = { libraryId: Number, currentUserId: Number }
  static targets = ["messages", "form"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "LibraryChannel", id: this.libraryIdValue },
      { received: data => this.insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the library with the id ${this.libraryIdValue}.`)
  }

  insertMessageAndScrollDown(data) {
    const currentUserIsSender = this.currentUserIdValue === data.sender_id
    const messageElement = this.buildMessageElement(currentUserIsSender, data.message)
    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  buildMessageElement(currentUserIsSender, message) {
    return `
      <div class="message-row d-flex ${this.#justifyClass(currentUserIsSender)}">
        <div class="${this.#userStyleClass(currentUserIsSender)}">
          ${message}
        </div>
      </div>
    `
  }

  #justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }
  
  #userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }

  resetForm(event) {
    event.target.reset()
  }
}
