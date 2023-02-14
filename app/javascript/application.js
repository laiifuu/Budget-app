// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// I write my js here okay ? 

let openPopupBtn = document.querySelector('.select-icon');
openPopupBtn.addEventListener('click', (e) => {
  let popupSection = document.querySelector('.icon-picker')
  if (popupSection.classList.contains('hidden')){
    popupSection.classList.remove('hidden');
  }
});

let closePopupBtn = document.querySelector('.close-icon-picker-btn');
closePopupBtn.addEventListener('click', (e) => {
  let popupSection = document.querySelector('.icon-picker')
  if (!popupSection.classList.contains('hidden')){
    popupSection.classList.add('hidden');
  }
});

let icons = Array.from(document.querySelectorAll('.icon'))
icons.forEach((icon) => {
  icon.addEventListener('click', (e) => {
    let iconInput = document.querySelector('.icon-input');
    let iconElement = icon.querySelector('i');
    iconInput.value = Array.from(iconElement.classList).join(" ");
    let popupSection = document.querySelector('.icon-picker')
    popupSection.classList.add('hidden');
  });
});
