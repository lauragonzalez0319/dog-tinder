import React from "react";
import { useState, useEffect } from "react";
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom';
import NavBar from './NavBar';
import Homepage from './Homepage';
import ProfileSetup from './ProfileSetup';
import SwipeMode from './SwipeMode';
import Matches from './Matches';

function App() {

  const [dogProfiles, setDogProfiles] = useState([]);

  useEffect(() => {
    fetch("/dog_profiles")
      .then(res => res.json())
      .then((dogProfiles) => {
      console.log(dogProfiles)
      setDogProfiles(dogProfiles)
      })
  }, [])

  return (
    <Router >
    <div className="App">
      <NavBar/>
        <Routes>
          <Route path="/" element={<Homepage />}/>
          <Route path="/profilesetup" element={<ProfileSetup />}/>
          <Route path="/swipemode" element={<SwipeMode dogProfiles={dogProfiles} />}/>
          <Route path="/matches" element={<Matches />}/>
        </Routes>
    </div>
    </Router>
  );
}

export default App;
