const express = require("express");
const router = express.Router();
const db = require("../db/orm");

router.get("/", (req, res) => {
    try {
        db.all("games", data => {
            res.json(data).status(200)
        });
    } catch (err) {
        console.error(err);
        res.status(500).send("Oops!");
    }
});

router.get("/:id", (req, res) => {
    try {
        db.oneById("games", req.params.id, data => {
            res.json(data).status(200);
        });
    } catch (err) {
        console.error(err);
        res.status(500).send("Oops!");
    }
});

module.exports = router;