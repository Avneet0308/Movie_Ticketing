var a = parseInt(0);

function openNav() {
    document.getElementById("loginDiv").style.width = "250px";
    document.getElementById("loginDiv").style.height = "700px";
    document.getElementById("loginDiv").style.border = "1px solid white";
    
}
window.addEventListener('click', function(f){
  if ((!document.getElementById('exception').contains(f.target))){
    a=parseInt(1);
  }
})
window.addEventListener('click', function(e){
  if (a==1&&(!document.getElementById('loginDiv').contains(e.target))){
    document.getElementById("loginDiv").style.width = "0";
    a=parseInt(0);
  }
})
