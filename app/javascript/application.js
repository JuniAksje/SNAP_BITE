// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
//  para filtrar os chats
function filterChats() {
  const input = document.getElementById("chatSearch").value.toLowerCase();
  const cards = document.querySelectorAll(".chat-card");

  cards.forEach(card => {
    const text = card.innerText.toLowerCase();
    card.style.display = text.includes(input) ? "" : "none";
  });
}
