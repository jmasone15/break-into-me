async function getData(url) {
    const response = await fetch(url);
    return response.json();
}

async function populatePage() {
    const data = await getData("/api");
    console.log(data);
}

populatePage();