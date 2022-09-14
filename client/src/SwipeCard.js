import React from 'react';
import { Card, Icon, Button, Image } from "semantic-ui-react";

function SwipeCard({ dogProfile, onLeftSwipe, onRightSwipe }) {
  return (
    <div className="swipe-mode">
      <Card fluid className="card-container" color="red">
        <Image src={dogProfile.image_url} size="huge" centered/>
        <Card.Content>
          <Card.Header style={{ fontSize: "55px", textAlign: "center" }} centered>{dogProfile.name} , {dogProfile.age}</Card.Header>
          <Card.Meta style={{ fontSize: "25px", textAlign: "center" }}>
            <span className='location'>{dogProfile.location}</span>
          </Card.Meta>
          <Card.Description className="card-text">
            Bio: {dogProfile.bio}
          </Card.Description>
          <Card.Description className="card-text">
            Breed: {dogProfile.breed}
          </Card.Description>
          <Card.Description className="card-text">
            Size: {dogProfile.size}
          </Card.Description>
          <Card.Description className="card-text">
            Looking For: {dogProfile.looking_for}
          </Card.Description>
          <Card.Description className="card-text">
            Has Kids: {dogProfile.has_kids ? "Yes" : "No"}
          </Card.Description>
          <Card.Description className="card-text">
            Want Kids: {dogProfile.wants_kids ? "Yes" : "No"}
          </Card.Description>
          </Card.Content>
          <Button.Group>
          <Button inverted color="red" icon size="huge" labelPosition='left' onClick={onLeftSwipe}>
            <Icon name='left arrow' />
            Talk to the Paw
          </Button>
          <Button color= "green" icon size="huge" labelPosition='right' onClick={onRightSwipe}>
            Lets butt sniff
          <Icon name='right arrow' />
          </Button>
          </Button.Group>
      </Card>
    </div>
  )
}

export default SwipeCard