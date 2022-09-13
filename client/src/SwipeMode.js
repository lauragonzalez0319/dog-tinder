import React from 'react'
import { useState } from "react";
import SwipeCard from './SwipeCard';

function SwipeMode({ dogProfiles }) {
  
  const [index, setIndex] = useState(0);

  function onLeftSwipe() {
    if (index < dogProfiles.length - 1) { setIndex(index + 1) }
  }

  function onRightSwipe() {
    if (index < dogProfiles.length - 1) { setIndex(index + 1) }
  }

  return (
    <SwipeCard key={dogProfiles[index].id} dogProfile={dogProfiles[index]} 
    onLeftSwipe={onLeftSwipe} onRightSwipe={onRightSwipe} 
    />
  )
}

export default SwipeMode