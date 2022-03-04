function mostrarData(result) {
  result.photos.forEach(function(response) {
    console.log(response.img_src)
    const contenedor = document.createElement('div')
    contenedor.setAttribute('class', 'col')
    const imagen_agregar = document.createElement('img')
    imagen_agregar.setAttribute('src', response.img_src)
    contenedor.appendChild(imagen_agregar)
    document.querySelector('#mars-photos').appendChild(contenedor)
  })
}

document.addEventListener('DOMContentLoaded', function() {
  var requestOptions = {
    method: 'GET',
    redirect: 'follow'
  };

  fetch("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY", requestOptions)
    .then(response => response.text())
    .then(response => JSON.parse(response))
    .then(mostrarData)
    .catch(error => console.log('error', error));
})

/*
// ESTO ES LO QUE COPIAMOS PEGAMOS DE POSTMAN
var requestOptions = {
  method: 'GET',
  redirect: 'follow'
};

fetch("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY", requestOptions)
  .then(response => response.text())
  .then(result => console.log(result))
  .catch(error => console.log('error', error));
*/
