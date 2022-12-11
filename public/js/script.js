const gamesContainer = document.getElementById("game-container");

async function getData(url) {
    const response = await fetch(url);
    return response.json();
}

async function populatePage() {
    const data = await getData("/api");
    console.log(data);
    htmlArray = [];

    for (let i = 0; i < data.length; i++) {
        if (i % 2 !== 0) {
            htmlArray.push(
                `
            <div class="col-md-5 video-box">
                <div class="d-flex justify-content-between mt-2">
                    <h3>${data[i].title}</h3>
                    <i class="bi ${data[i].multiplayer_ind === 0 ? `bi-person-fill` : `bi-people-fill`} logo-img" style="font-size: 25px;" title=${data[i].multiplayer_ind === 0 ? "Single-Player" : "Multi-Player"}></i>
                </div>
                <h6>${data[i].genre}</h6>
                <p>${data[i].description}</p>
            </div>
        </div>`
            )
        } else {
            htmlArray.push(
                `
                <div class="row mb-5">
                <div class="col-md-5 video-box">
                    <div class="d-flex justify-content-between mt-2">
                        <h3>${data[i].title}</h3>
                        <i class="bi ${data[i].multiplayer_ind === 0 ? `bi-person-fill` : `bi-people-fill`} logo-img" style="font-size: 25px;" title=${data[i].multiplayer_ind === 0 ? "Single-Player" : "Multi-Player"}></i>
                    </div>
                    <h6>${data[i].genre}</h6>
                    <p>${data[i].description}</p>
                </div>
                <div class="col-md-2"></div>`
            )
        }
    }

    gamesContainer.innerHTML = htmlArray.join("");
}

populatePage();