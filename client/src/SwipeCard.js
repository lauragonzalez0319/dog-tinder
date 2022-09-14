import React from 'react';
import { Card, Icon, Button } from "semantic-ui-react";

function SwipeCard({ dogProfile, onLeftSwipe, onRightSwipe }) {
  return (
    <div>
      <Card>
        <div className="card-img-container">
                    <img 
                        className="card-img"
                        src={dogProfile.image_url} 
                        size="small"
                        alt="user"/>
                </div>
        <Card.Content>
          <Card.Header>{dogProfile.name} , {dogProfile.age}</Card.Header>
          <Card.Meta>
            <span className='location'>{dogProfile.location}</span>
          </Card.Meta>
          <Card.Description>
            Bio: {dogProfile.bio}
            Breed: {dogProfile.breed}
            Size: {dogProfile.size}
            Looking For: {dogProfile.looking_for}
            Has Kids: {dogProfile.has_kids ? "Yes" : "No"}
            Want Kids: {dogProfile.wants_kids ? "Yes" : "No"}
          </Card.Description>
        </Card.Content>
        <Button icon labelPosition='left' onClick={onLeftSwipe}>
          <Icon name='left arrow' />
          Not Interested
        </Button>
        <Button icon labelPosition='right' onClick={onRightSwipe}>
          Interested
        <Icon name='right arrow' />
        </Button>
      </Card>
    </div>
  )
}

export default SwipeCard