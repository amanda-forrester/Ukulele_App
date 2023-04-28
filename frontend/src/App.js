import ukulele_photo from './ukulele_photo.jpg';
import './App.css';
import SongComponent from './SongComponent';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Ukulele Song Finder</h1> <br></br>
        <img src={ukulele_photo} className="App-logo" alt="logo" />
        <p>
          Enter the name of a chord to find ukulele songs that contain that chord. Use "b" for flat and "m" for minor.
        </p>
        {<SongComponent />}
      </header>
    </div>
  );
}

export default App;
