function showContent() {
    div1 = document.getElementById("divcliente");
    div2 = document.getElementById("divadministartivo");
    div3 = document.getElementById("divprofesional");
   
    
    if(document.getElementById("cliente").checked){

        div1.style.display='block';
        div2.style.display='none';
        div3.style.display='none';



    }else if(document.getElementById("administrativo").checked){
        div1.style.display='none';
        div2.style.display='block';
        div3.style.display='none';
    }else{
        div1.style.display='none';
        div2.style.display='none';
        div3.style.display='block';
    }
    
}