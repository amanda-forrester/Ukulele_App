const app = require('express')();
const db = require('../queries');


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
  