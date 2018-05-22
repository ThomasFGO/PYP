//= require rails-ujs
//= require_tree .
function openNav() {
  document.getElementById("mySidenav").style.width = "180px";
  document.getElementById("main").style.marginLeft = "150px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}
