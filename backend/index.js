const express = require('express');
const port = 3006;
const db = require('./queries');

const app = express();

app.get('/', (req, res) => {res.send('hello world!')})


app.get("/api/songs/:chord", async (req, res) => {
    const { chord } = req.params;
    try {
      const songNames = await db.getSongsByChord(chord);
      res.json({ song_names: songNames });
    } catch (error) {
      console.error("Error getting songs:", error);
      res.status(500).json({ error: "Could not get songs" });
    }
  });


  app.listen(port, () => {
    console.log(`App running on port ${port}.`);
})
  