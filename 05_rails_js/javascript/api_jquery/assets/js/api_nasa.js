$(document).ready(function() {
  console.log("Documento listo")
  var settings = {
    "url": "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY",
    "method": "GET",
    "timeout": 0,
  };
  
  $.ajax(settings).done(function (response) {
    // console.log("RESPUESTA DE LA API DE LA NASA DE LOS ROVERS: ", response);
    console.log("::> response: ", response);
    const photos = response.photos.slice(0, 10)
    photos.forEach(function (elemento) {
    // response.photos.forEach(function (elemento) {
      console.log(elemento.img_src)
      $('#mars-photos').append(
        `<div class="col-3">
          <img class="img-fluid" src="${elemento.img_src}">
        </div>`
      )
      /*
        '<div class="col-3">' +
          '<img class="img-fluid" src="' + elemento.img_src +'">' +
        '</div>'
        */
    })

  });

})
