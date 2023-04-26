import React, { useState } from "react";

function SongComponent() {
  const [chordInput, setChordInput] = useState("");
  const [songNames, setSongNames] = useState([]);


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
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <label>
          Enter a chord:
          <input type="text" value={chordInput} onChange={handleInputChange} />
        </label>
        <button type="submit">Submit</button>
      </form>
      {songNames.length > 0 ? (
        <ol>
          {songNames.map((song) => (
          <li key={song.song_name}>
            <a href={song.song_url} target="_blank" rel="noopener noreferrer">{song.song_name}</a> ({song.song_url})
          </li>
           ))}
        </ol>
      ) : (
        <p>No songs found.</p>
      )}
    </div>
  );
}



export default SongComponent;