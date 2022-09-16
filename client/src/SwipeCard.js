import React from 'react';
import { Card, Icon, Button, Image, List } from "semantic-ui-react";
import Background from "./paws.jpg"

function SwipeCard({ swipeDogProfile, onLeftSwipe, onRightSwipe }) {
  
  function onLeftSwipeClick() {
    onLeftSwipe(swipeDogProfile.id)
  }

  function onRightSwipeClick() {
    onRightSwipe(swipeDogProfile.id)
  }


  return (
    <div className="swipe-mode">
      <Card fluid>
        <div style={{ backgroundImage: "url(" + Background + ")" }}>
          <Image src={swipeDogProfile.image_url} size="huge" centered />
        </div>
        <Card.Content>
          <Card.Header style={{ fontSize: "55px", textAlign: "center" }} centered>{swipeDogProfile.name}, {swipeDogProfile.age}</Card.Header>
          <Card.Meta style={{ fontSize: "35px", textAlign: "center" }}>
            <span className='location'>{swipeDogProfile.location}</span>
          </Card.Meta>
          <Card.Description className="swipe-card-text">
            <List>
              <List.Item>
              <List.Header>Bio:</List.Header> {swipeDogProfile.bio}
              </List.Item>
              <List.Item>
              <List.Header>Breed:</List.Header> {swipeDogProfile.breed}
              </List.Item>
              <List.Item>
              <List.Header>Size:</List.Header> {swipeDogProfile.size}
              </List.Item>
              <List.Item>
              <List.Header>Looking For:</List.Header> {swipeDogProfile.looking_for}
              </List.Item>
              <List.Item>
              <List.Header>Has Kids:</List.Header> {swipeDogProfile.has_kids ? "Yes" : "No"}
              </List.Item>
              <List.Item>
              <List.Header>Want Kids:</List.Header> {swipeDogProfile.wants_kids ? "Yes" : "No"}
              </List.Item>
            </List>
          </Card.Description>
          </Card.Content>
          <Button.Group size="massive">
          <Button className="card-buttons" color="red" icon labelPosition='left' onClick={onLeftSwipeClick}>
            <Icon name='left arrow' />
            Talk to the Paw
          </Button>
          <Button.Or size="massive" />
          <Button className="card-buttons" color= "green" icon labelPosition='right' onClick={onRightSwipeClick}>
            Lets Butt Sniff
          <Icon name='right arrow' />
          </Button>
          </Button.Group>
      </Card>
    </div>
  )
}

export default SwipeCard