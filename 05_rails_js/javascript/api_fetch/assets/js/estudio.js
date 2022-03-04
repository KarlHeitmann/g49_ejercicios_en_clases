const DEMO_KEY = 'DEMO_KEY'
document.addEventListener('DOMContentLoaded', () => {
  // start_promise()
  start_async_await()
})

function start_promise() {

  let sol_day = 201
  getPhotosPromise(`https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=${sol_day}&api_key=${DEMO_KEY}`, sol_day);
  sol_day = 202
  getPhotosPromise(`https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=${sol_day}&api_key=${DEMO_KEY}`, sol_day);
  sol_day = 203
  getPhotosPromise(`https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=${sol_day}&api_key=${DEMO_KEY}`, sol_day);
}

async function start_async_await() {
  let sol_day = 10
  await getPhotosAsync(`https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=${sol_day}&api_key=${DEMO_KEY}`, sol_day);
  sol_day = 1000
  await getPhotosAsync(`https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=${sol_day}&api_key=${DEMO_KEY}`, sol_day);
  sol_day = 100
  await getPhotosAsync(`https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=${sol_day}&api_key=${DEMO_KEY}`, sol_day);
}

function getPhotosPromise(url, sol_day) {
  var requestOptions = {
    method: 'GET',
    redirect: 'follow'
  };

  fetch(url, requestOptions)
    .then(response => response.text())
    .then(response => JSON.parse(response))
    .then(result => {
      // console.log(result);
      console.log(`PROMISE -- sol_day: ${sol_day} -- result.photos.length = `, result.photos.length, url)
      // console.log(`PROMISE -- sol_day: ${sol_day} -- result.photos.length = `, result.photos.length)
    })
    
    .catch(error => console.log('error', error));
}

/*
async function getPhotosAsync(url, sol_day) {
  var requestOptions = {
    method: 'GET',
    redirect: 'follow'
  };

  const response_raw = await fetch(url, requestOptions)
  console.log("response_raw: ", response_raw)
  const response_text = await response_raw.text()
  console.log("response_text: ", response_text)
  const result = await JSON.parse(response_text)
  // console.log(`ASYNC/AWAIT -- sol_day: ${sol_day} result.photos.length = `, result.photos.length)
  console.log(`ASYNC/AWAIT -- sol_day: ${sol_day} result.photos.length = `, result.photos.length, url)
}
*/


const getPhotosAsync = async (url, sol_day) => {
  var requestOptions = {
    method: 'GET',
    redirect: 'follow'
  };

  const response_raw = await fetch(url, requestOptions)
  console.log("response_raw: ", response_raw)
  const response_text = await response_raw.text()
  console.log("response_text: ", response_text)
  const result = await JSON.parse(response_text)
  // console.log(`ASYNC/AWAIT -- sol_day: ${sol_day} result.photos.length = `, result.photos.length)
  console.log(`ASYNC/AWAIT -- sol_day: ${sol_day} result.photos.length = `, result.photos.length, url)
}
