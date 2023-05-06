import { Server } from '@vercel/node';
import { getSongsByChord } from './queries';

const server = new Server();

server.get("/api/songs/:chord", async (req, res) => {
  const { chord } = req.params;
  try {
    const songNames = await getSongsByChord(chord);
    res.json({ song_names: songNames });
  } catch (error) {
    console.error("Error getting songs:", error);
    res.status(500).json({ error: "Could not get songs" });
  }
});

export default server;


/*const express = require('express');
const port = 3006;
const db = require('./queries');

const app = express();


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
})*/
  