import React from 'react'
import { useState } from "react";
import SwipeCard from './SwipeCard';

function SwipeMode({ user, swipeDogProfiles, handleLeftSwipe, handleRightSwipe }) {
  
  const [index, setIndex] = useState(0);

  function onLeftSwipe(leftSwipedId) {
    if (index < swipeDogProfiles.length - 1) { setIndex(index + 1) }
    let postReqObj = {
      decision_maker_id: user.id,
      decision_receiver_id: leftSwipedId,
      approved: false
    }
    handleLeftSwipe(postReqObj)
  }

  function onRightSwipe(RightSwipedId) {
    if (index < swipeDogProfiles.length - 1) { setIndex(index + 1) }
    let postReqObj = {
      decision_maker_id: user.id,
      decision_receiver_id: RightSwipedId,
      approved: true
    }
    handleRightSwipe(postReqObj)
  }

  return (
    <SwipeCard key={swipeDogProfiles[index].id} swipeDogProfile={swipeDogProfiles[index]} 
    onLeftSwipe={onLeftSwipe} onRightSwipe={onRightSwipe}
    />
  )
}

export default SwipeMode