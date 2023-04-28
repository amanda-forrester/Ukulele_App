const dotenv = require('dotenv');
dotenv.config();

const Pool = require('pg').Pool;
const pool = new Pool({
    user: process.env.USER,
    host: process.env.HOST,
    database: process.env.DATABASE,
    password: process.env.PASSWORD,
    port: process.env.PORT,
});

async function getSongsByChord(chord_input) {
    try {
      const query = 'SELECT ukulele_songs.song_name, ukulele_songs.song_url FROM ukulele_songs INNER JOIN chords ON ukulele_songs.id = chords.song_id WHERE chords.chord = $1';
      const values = [chord_input];
      const results = await pool.query(query, values);
      return results.rows
    } catch(err) {
      console.log(`Query error!: ${JSON.stringify(err)}`);
      return [];
    }
  }
  


module.exports = {
    getSongsByChord
}