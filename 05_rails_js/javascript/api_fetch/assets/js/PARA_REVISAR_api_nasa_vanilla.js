/*
function saludar_funcion_ordinaria(nombre) {
  console.log(`Hola __funcion ordinaria__: ${nombre}`)
  console.log("####")
  console.log(this)
}
const saludar_arrow_function = nombre => {
  console.log(`Hola FUNCION FLECHA: ${nombre}`)
  console.log("----")
  console.log(this) // OJO, en este contexto vale lo mismo
}
*/


function saludar_funcion_ordinaria(nombre) { console.log(`Hola __funcion ordinaria__: ${nombre}`) }
const saludar_arrow_function = nombre => console.log(`Hola FUNCION FLECHA: ${nombre}`)

document.addEventListener('DOMContentLoaded', function() {
  console.log("API NASA VANILLA JS")
  saludar_funcion_ordinaria("John Doe")
  saludar_funcion_ordinaria("Jane Doe")
  saludar_arrow_function("John Doe")
  saludar_arrow_function("Jane Doe")

  var requestOptions = {
    method: 'GET',
    redirect: 'follow'
  };

  fetch("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY", requestOptions)
    // .then(function (response) { console.log(response.text()) })
    .then(response => response.text())
    // .then(function (result) { console.log(result) })
    .then(result => console.log(result))
    // .then(mostrarData)
    // .then(mostrarDataArrow)
    // .catch(error => console.log('error', error));
})

function mostrarData(result) {
  console.log(result)
}

const mostrarDataArrow = result => console.log(result)