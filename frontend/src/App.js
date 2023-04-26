import ukulele_photo from './ukulele_photo.jpg';
import './App.css';
import SongComponent from './SongComponent';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={ukulele_photo} className="App-logo" alt="logo" />
        <p>
          {<SongComponent />}
        </p>
      </header>
    </div>
  );
}

export default App;
