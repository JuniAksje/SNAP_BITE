import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["hideable", "show", "banner"]

  toggleSidebar(event) {
    event.preventDefault()
     if (this.hideableTarget.classList.contains("d-none")) {
      this.bannerTarget.classList.remove("col-md-12")
      this.bannerTarget.classList.add("col-md-10")
      this.hideableTarget.classList.remove("d-none")
      this.showTarget.classList.add("d-none")
    } else {
      this.bannerTarget.classList.remove("col-md-10")
      this.bannerTarget.classList.add("col-md-12")
      this.hideableTarget.classList.add("d-none")
      this.showTarget.classList.remove("d-none")
    }
    // this.hideableTarget.classList.toggle("d-none")

    // // Atualiza ícone da seta
    // const icon = this.hideableTarget.querySelector(".sidebar-icon")
    // icon.classList.toggle("fa-square-caret-left")
    // icon.classList.toggle("fa-square-caret-right")

    // // Move o conteúdo principal junto
    document.querySelector(".main-content").classList.toggle("expand")
    document.querySelector(".banner").classList.toggle("full-width")
  }
  connect() {
    console.log(this.hideableTarget);
    console.log(this.showTarget);
  }
}
