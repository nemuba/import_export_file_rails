import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  click(event) {
    event.preventDefault()
    let body = document.querySelector("body");

    event.target.classList.toggle("active")
    body.classList.toggle("dark")

    event.target.textContent = event.target.textContent.trim() === "DIA" ? "NOITE" : "DIA"
  }
}
