import React from 'react'
import { Card, Icon, Button, Image, List } from "semantic-ui-react";

function MatchCard({ match }) {

  return (
    <div>
      <Card>
          <Icon name="heart" floated="right" size="huge" color="pink"/> 
          <div className="card-img-container">
            <Image className="card-img" src={match.image_url} />
          </div>
        <Card.Content>
          <Card.Header style={{ fontSize: "45px", textAlign: "center" }} centered>{match.name}, {match.age}</Card.Header>
          <Card.Meta style={{ fontSize: "25px", textAlign: "center" }}>
            <span className='location'>{match.location}</span>
          </Card.Meta>
          <Card.Description className="match-card-text">
            <List>
              <List.Item>
              <List.Header>Bio:</List.Header> {match.bio}
              </List.Item>
              <List.Item>
              <List.Header>Breed:</List.Header> {match.breed}
              </List.Item>
              <List.Item>
              <List.Header>Size:</List.Header> {match.size}
              </List.Item>
              <List.Item>
              <List.Header>Looking For:</List.Header> {match.looking_for}
              </List.Item>
              <List.Item>
              <List.Header>Has Kids:</List.Header> {match.has_kids ? "Yes" : "No"}
              </List.Item>
              <List.Item>
              <List.Header>Want Kids:</List.Header> {match.wants_kids ? "Yes" : "No"}
              </List.Item>
            </List>
          </Card.Description>
          </Card.Content>
          <Button style={{ fontSize: "28px" }} color="red">
          <Icon name="remove" size="big" />
            Un-Match
          </Button>
      </Card>
    </div>
  )
}

export default MatchCard