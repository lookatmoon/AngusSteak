function setVisibility(id) {
    if(document.getElementById('bt1').innerHTML=='Hide'){
        document.getElementById('bt1').innerHTML = 'Advance';
        document.getElementById(id).style.display = 'none';
    }else{
        document.getElementById('bt1').innerHTML = 'Hide';
        document.getElementById(id).style.display = 'inline';
    }
}
