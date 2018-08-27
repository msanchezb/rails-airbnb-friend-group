//= require rails-ujs
//= require_tree .
//= require jquery
//= require bootstrap
//= require_tree .


const button = document.getElementById("badge-reload");

const badge = () => {
  button.click();
};

document.addEventListener("DOMContentLoaded", (event) => {
  if (button) {
    setInterval(badge, 10000)
  }
});

const not = document.getElementById("notification").childNodes[1];

const notification = () => {
    console.log(not.classList)
  if (not.classList !== "notification-badge") {
    not.classList.add("notification-badge");
  }
};

const noNotification = () => {
    console.log(not.classList)
  if (not.classList === "notification-badge") {
    not.classList.remove("notification-badge");
  }
};
