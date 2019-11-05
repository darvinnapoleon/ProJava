const botones = document.querySelectorAll(".bEliminar");
botones.forEach(boton => {
    boton.addEventListener("click", function(){
      const idpro = this.dataset.idpro;
        
        const confirm = window.confirm("¿Deseas eliminar al alumno " + idpro + "?");
        if(confirm){
            // solicitud AJAX
            httpRequest("http://localhost:8080/SisBebidas/controlped.do" + idpro, function(){
                //console.log(this.responseText);
                document.querySelector("#respuesta").innerHTML = this.responseText;

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
        if(this.readyState == 3 && this.status == 200){
            callback.apply(http);
        }
    }
}
