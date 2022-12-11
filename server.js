const express = require("express");
const db = require("./db/connection.js");
const routes = require("./routes/game-routes");
const path = require("path");

const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));
app.use("/api", routes);

app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`);
    db.connect( (err) => {
        if (err) throw err;
        console.log(`Connected at id: ${db.threadId}`);
    });
});