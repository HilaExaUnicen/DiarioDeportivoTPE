"use strict"

const url = "http://localhost/tpedebug/api/comentarios";

document.addEventListener("DOMContentLoaded",()=>{

//GET
async function getComentarios(){
    let listaComentarios = document.querySelector("#liComentarios");
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
                listaComentarios.innerHTML+= `<li>${item.email} | ${item.comentario} | ${item.puntaje}</li>`
        }
    }
}

//POST
document.querySelector("#postearComentario").addEventListener("click", postearComentario);


async function postearComentario(){
    event.preventDefault();
    
    let listaComentarios = document.querySelector("#liComentarios");
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
            let resultado = await fetch(url,{
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

document.querySelector("#borrarComentario").addEventListener("click", borrarComentario);

async function borrarComentario(){
    event.preventDefault();
    let idPrueba = 25;

    try {
        let resultado = await fetch(`${url}/${idtrucho}`, {
            "method":"DELETE",
        });
    } 
    catch (error) {
        console.log(error);
    }

    getComentarios();
    
}

});



















