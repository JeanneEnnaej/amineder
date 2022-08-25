import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reservation"
export default class extends Controller {
  static targets = ["popup", "output" ]
  static values = {
    id: String,
  }

  connect() {
  }

  showPopup(event) {
    // event.preventDefa  ult();
    this.popupTarget.classList.toggle("display-none");
    console.log(this.idValue);
  }

  greet() {
    console.log(this.idValue);
    this.outputTarget.textContent =
      `Hello, ${this.idValue.value}!`
  }



}
