const botones = document.querySelectorAll(".bEliminar");
botones.forEach(boton => {
    boton.addEventListener("click", function(){
        const idpro = this.dataset.idpro;
            httpRequest("http://localhost:8080/SisBebidas/deleteitem.do?accion=delete&idpro="+idpro, function(){
                document.querySelector("#txt-subtotal").innerHTML = this.responseText;
                document.querySelector("#txt-total").innerHTML = this.responseText;
                const tbody = document.querySelector("#tbody-alumnos");
                const fila  = document.querySelector("#fila-" + idpro);
                tbody.removeChild(fila);
            });
        
    });
});
const actualizar = document.querySelectorAll(".today-special-cantidad");
actualizar.forEach(boton => {
    boton.addEventListener("keyup", function(e){
        if(e.keyCode===13){
         const can = this.value; 
         const idpro = this.dataset.idpro; 
         const pre = this.dataset.pre;
         var subt = (can*pre*100.0)/100.0;
         document.querySelector("#txt-prosub-"+ idpro).innerHTML = "s/ "+ subt;
         httpRequest("http://localhost:8080/SisBebidas/deleteitem.do?accion=cambiar&idpro="+idpro+"&can="+can, function(){
             document.querySelector("#txt-subtotal").innerHTML = this.responseText;
             document.querySelector("#txt-total").innerHTML = this.responseText;
               //alert(this.responseText);
            });
        }     
        
    });
});
function httpRequest(url, callback){
    const http = new XMLHttpRequest();
    http.open("GET", url);
    http.send();
    http.onreadystatechange= function(){
        if(this.readyState === 4 && this.status === 200){
            callback.apply(http);
        }
    };
}

const listas = document.querySelectorAll(".lisjs");
if(listas.length<1){
   
    document.querySelector("#rpts").innerHTML = "No hay productos";;
}

/*const maspro = document.querySelectorAll(".maspro");
maspro.forEach(boton => {
    boton.addEventListener("click", function(){
        const can = document.getElementById("can");
        alert(can)+1; 
    });
});
*/

