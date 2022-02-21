// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const dropdown = document.querySelector('.dropdown')
const dropdownBtn = document.querySelector('.dropdown-btn')
dropdownBtn.addEventListener('click', e => {
    e.preventDefault()
    dropdown.classList.toggle('active')
})


