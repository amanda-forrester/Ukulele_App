const { createClient } = require('@supabase/supabase-js');
const { config } = require('dotenv');
config();

const supabaseUrl = process.env.SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_KEY;
const supabase = createClient(supabaseUrl, supabaseKey);


async function getSongsByChord(chord_input) {
  try {
    const { data: results, error } = await supabase
      .from('ukulele_songs')
      .select('song_name, song_url, song_artist, chords!inner(*)')
      .eq('chords.chord', chord_input);

    if (error) {
      console.log(`Query error!: ${JSON.stringify(error)}`);
      return [];
    }
    console.log(results);
    return results;
  } catch (err) {
    console.log(`Query error!: ${JSON.stringify(err)}`);
    return [];
  }
}

module.exports = {
  getSongsByChord,
};