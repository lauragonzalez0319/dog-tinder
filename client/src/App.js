import React from "react";
import { useState, useEffect } from "react";
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom';
import NavBar from './NavBar';
import Homepage from './Homepage';
import EditProfile from './EditProfile';
import SwipeMode from './SwipeMode';
import Matches from './Matches';
import LoginForm from './LoginForm';
import SignUpForm from './SignUpForm';

function App() {
  const [swipeDogProfiles, setSwipeDogProfiles] = useState([]);
  const [matches, setMatches] = useState([]);
  const [user, setUser] = useState(null);
  const [swipeMade, setSwipeMade] = useState(0);

  useEffect(() => {
    console.log(swipeMade)
  }, [swipeMade])


  useEffect(() => {
    if (user !== null) {
      fetch(`/users/${user.id}/dog_profiles/${user.id}/eligible_profiles`)
      .then(res => res.json())
      .then((eligibleDogProfiles) => setSwipeDogProfiles(eligibleDogProfiles))  
    }
  }, [swipeMade, user])

  useEffect(() => {
    if (user !== null) {
      fetch(`/users/${user.id}/dog_profiles/${user.id}/matches_profiles`)
        .then(res => res.json())
        .then((matchesProfiles) => {
          console.log(matchesProfiles)
          setMatches(matchesProfiles)
        })
    }
  }, [swipeMade, user])

  function handleLeftSwipe(postReqObj) {
      fetch(`/users/${user.id}/decisions/make_decision/${user.id}`, {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(postReqObj),
        })
      setSwipeMade(swipeMade + 1)
  }

  function handleRightSwipe(postReqObj) {
    fetch(`/users/${user.id}/decisions/make_decision/${user.id}`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(postReqObj),
    })
    setSwipeMade(swipeMade + 1)
  }

  
  function handleEditProfile(postReqObj) {
    fetch(`/users/${user.id}/dog_profiles/${user.id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(postReqObj),
    })
  }

  return (
    <div>
      <img id="banner-img" src="/tindog.jpg" alt="banner" className="center"/>
      <Router >
      <div className="App">
        <NavBar user={user} onLogout={setUser}/>
          <Routes>
            <Route path="/" element={<Homepage />}/>
            <Route path="/editprofile" element={<EditProfile onEditProfile={handleEditProfile} />}/>
            <Route path="/swipemode" element={<SwipeMode user={user} swipeDogProfiles={swipeDogProfiles} handleLeftSwipe={handleLeftSwipe} 
              handleRightSwipe={handleRightSwipe} />}/>
            <Route path="/matches" element={<Matches matches={matches} />}/>
            <Route path="/users/new" element={<SignUpForm onSignUp={setUser} matches={matches} />}/>
            <Route path="/login" element={<LoginForm onLogin={setUser} matches={matches} />}/>
          </Routes>
      </div>
      </Router>
    </div>
  );
}

export default App;
