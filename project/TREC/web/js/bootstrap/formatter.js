function setVisibility(id) {
    if(document.getElementById('bt1').value=='Hide'){
        document.getElementById('bt1').value = 'Advance';
        document.getElementById(id).style.display = 'none';
    }else{
        document.getElementById('bt1').value = 'Hide';
        document.getElementById(id).style.display = 'inline';
    }
}
