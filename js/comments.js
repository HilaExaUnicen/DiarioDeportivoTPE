"use strict"

const url = "http://localhost/tpedebug/api/comentarios";
const listaComentarios = document.querySelector("#liComentarios");



//GET
    async function getComentarios(){
        let idNoticia = listaComentarios.getAttribute('data-idNoticia');

        listaComentarios.innerHTML = "";

        try {
            let resultadoFetch = await fetch(url);
            let comentarios = await resultadoFetch.json();

            mostrarComentariosPorNoticia(comentarios, idNoticia, listaComentarios);
      
        }    
        catch (error) {
            console.log(error);
        }
    }

    getComentarios();

    
    function mostrarComentariosPorNoticia(comentarios, idNoticia, listaComentarios){
        for (const item of comentarios) {
            if(item.id_noticiafk == idNoticia){
                listaComentarios.innerHTML+= `<li>${item.email} | ${item.comentario} | ${item.puntaje} 
                                              <button id="${item.id_comentario}">Borrar</button></li>`
                

                setTimeout(function(){
                    eventoDelete(`${item.id_comentario}`);
                }, 10);
            }
        }
    }

//POST/////////////////
    document.querySelector("#postearComentario").addEventListener("click", postearComentario);

    async function postearComentario(){
        event.preventDefault();
    
        let comentarioValue = document.querySelector("#inputComentario").value;
        let puntaje = document.querySelector("#puntuacion").value;
        let idNoticia = listaComentarios.getAttribute('data-idNoticia');
        let idUsuario = listaComentarios.getAttribute("data-idUsuario");  

        if(comentarioValue && puntaje){
            let nuevoComentario = {
                "comentario": comentarioValue,
                "puntaje": puntaje,
                "id_noticiafk": idNoticia,
                "id_usuariofk": idUsuario 
            }
    
        try {
            await fetch(url,{
                "method": "POST",
                "headers": { "Content-type" : "application/json" },
                "body": JSON.stringify(nuevoComentario)
            });
        } 
        catch (error) {
            console.log(error);
        }
        
        getComentarios();
        document.querySelector("#inputComentario").value = "";
        
    }
    else{
        alert("Ingrese todos los campos del form");
    }
}

//DELETE////////////////////////

    function eventoDelete(idComentario) {
        if(idComentario != null){
            document.getElementById(idComentario).addEventListener("click", function(){
                deleteComentario(idComentario);
            });
        }
    
    }
    
    async function deleteComentario(idComentario) {
        try{
            let resultado = await fetch(`${url}/${idComentario}`, {
                "method": "DELETE"
            });

            if(resultado.status == 200){
                console.log("Eliminado con exito");
                getComentarios();
            }

        }
        catch(error){
            console.log(error);
        }
    }

//FILTRO//////
    document.querySelector("#filtrarComentarios").addEventListener("click", filtrarComentarios);

    async function filtrarComentarios(){
        event.preventDefault();
    
        let idNoticia = listaComentarios.getAttribute('data-idNoticia');
        try {
            let resultadoFetch = await fetch(`${url}/${idNoticia}`);
            let comentariosFiltrados = await resultadoFetch.json();

            listaComentarios.innerHTML = "";
            mostrarComentariosPorNoticia(comentariosFiltrados, idNoticia, listaComentarios);
      
        } 
        catch (error) {
            console.log(error);
        }
    }






















