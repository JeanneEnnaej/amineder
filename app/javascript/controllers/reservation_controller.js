import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reservation"
export default class extends Controller {
  static targets = ["popup"]

  connect() {
  }

  showPopup(event) {
    // event.preventDefa  ult();
    this.popupTarget.classList.toggle("display-none");
  }



}
