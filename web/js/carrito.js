const botones = document.querySelectorAll(".bEliminar");
botones.forEach(boton => {
    boton.addEventListener("click", function(){
        const idpro = this.dataset.idpro;
        const confirm = window.confirm("¿Deseas eliminar el producto " + idpro + "?");
        if(confirm){
            httpRequest("http://localhost:8080/SisBebidas/deleteitem.do?idpro=" + idpro, function(){
                document.querySelector("#txt-subtotal").innerHTML = this.responseText;
                document.querySelector("#txt-total").innerHTML = this.responseText;
                const tbody = document.querySelector("#tbody-alumnos");
                const fila  = document.querySelector("#fila-" + idpro);
                tbody.removeChild(fila);
            });
        }
    });
});
function httpRequest(url, callback){
    const http = new XMLHttpRequest();
    http.open("GET", url);
    http.send();
    http.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            callback.apply(http);
        }
    }
}
const listas = document.querySelectorAll(".lisjs");
if(listas.length<1){
    document.querySelector("#rpts").innerHTML = "No hay productos";
}
