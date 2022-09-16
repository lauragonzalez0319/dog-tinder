import React from 'react'
import { Card } from "semantic-ui-react";
import MatchCard from "./MatchCard"
import Background from "./paws.jpg"

function Matches({ matches }) {
  
  const matchesToDisplay = matches.map(match => (
    <MatchCard key={match.id} match={match} />
  ))
  
  return (
    <div style={{ backgroundImage: "url(" + Background + ")" }}>
    <Card.Group centered itemsPerRow={4}>
            {matchesToDisplay}
    </Card.Group>
    </div>
  )
}

export default Matches