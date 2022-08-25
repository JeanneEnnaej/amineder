import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reservation"
export default class extends Controller {
  static targets = ["popup", "output" ]
  static values = {
    id: String,
  }

  connect() {
  }

  showPopup() {
    this.popupTarget.classList.toggle("display-none");
  }
}
