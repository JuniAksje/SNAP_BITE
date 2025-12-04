import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebar"]

  toggleSidebar() {
    this.sidebarTarget.classList.toggle("sidebar-closed")

    // Atualiza ícone da seta
    const icon = this.sidebarTarget.querySelector(".sidebar-icon")
    icon.classList.toggle("fa-square-caret-left")
    icon.classList.toggle("fa-square-caret-right")

    // Move o conteúdo principal junto
    document.querySelector(".main-content").classList.toggle("expand")
    document.querySelector(".banner").classList.toggle("full-width")
  }
}
