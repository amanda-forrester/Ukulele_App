import React, { useState } from "react";

function SongComponent() {
  const [chordInput, setChordInput] = useState("");
  const [songNames, setSongNames] = useState([]);
  const [searched, setSearched] = useState(false);


  const handleInputChange = (event) => {
    const input = event.target.value;
    const sanitizedInput = input.replace(/[^A-Za-z0-9\s]/gi, "");
    const capitalizedInput = sanitizedInput.charAt(0).toUpperCase() + sanitizedInput.slice(1).toLowerCase();
    setChordInput(capitalizedInput);
  };
  
  

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      const response = await fetch(`/api/songs/${chordInput}`);
      const data = await response.json();
      setSongNames(data.song_names);
      setSearched(true);
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  

  
  return (
    <div>
      <form onSubmit={handleSubmit}>
        <label>
          Enter a chord:
          <input className="text_box" type="text" value={chordInput} onChange={handleInputChange} />
        </label>
        <button className="submit_button" type="submit">Submit</button>
      </form>
      {searched && songNames.length === 0 ? ( // only show "No songs found" if searched is true and no songs were found
        <p>No songs found.</p>
      ) : songNames.length > 0 ? (
        <ol className= "song_list">
          {songNames.map((song) => (
          <li key={song.song_name}>
            <a href={song.song_url} target="_blank" rel="noopener noreferrer">{song.song_name} by {song.song_artist}</a> 
          </li>
           ))}
        </ol>
      ) : null} {/* don't display anything if search hasn't been submitted yet */}
    </div>
  );
}



export default SongComponent;