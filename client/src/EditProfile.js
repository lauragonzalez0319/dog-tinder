import React from 'react';
import { useState } from 'react';
import { Button, Form, Dropdown, Input, Icon, TextArea, Label } from 'semantic-ui-react';

function EditProfile({ onEditProfile }) {
  const lookingForOptions = [
    {key: 'friendship', text: 'friendship', value: 'friendship'}, 
    {key: 'relationship', text: 'relationship', value: 'relationship'},
    {key: 'humpship', text: 'humpship', value: 'humpship'}
  ]

  const hasKidsOptions = [
    {key: 'yes', text: 'yes', value: true}, 
    {key: 'no', text: 'no', value: false}
  ]

  const wantsKidsOptions = [
    {key: 'yes', text: 'yes', value: true}, 
    {key: 'no', text: 'no', value: false}
  ]

  const [name, setName] = useState("");
  const [imageUrl, setImageUrl] = useState("");
  const [bio, setBio] = useState("");
  const [age, setAge] = useState("");
  const [location, setLocation] = useState("");
  const [lookingFor, setLookingFor] = useState("");
  const [hasKids, setHasKids] = useState(false); 
  const [wantsKids, setWantsKids] = useState(false); 

  function handleSubmit(event) { 
    event.preventDefault();
    let postReqObj = {
      name: name,
      image_url: imageUrl,
      bio: bio,
      age: age,
      location: location,
      looking_for: lookingFor,
      wants_kids: wantsKids,
      has_kids: hasKids
    }
    onEditProfile(postReqObj)
  }

  return (
    <Form onSubmit={handleSubmit} >
      <Form.Field className="form-text">
        <Label color="blue" size="massive" pointing="below">Name</Label>
        <Input placeholder='Name'
        size="huge" 
        value={name}
        onChange={(event) => setName(event.target.value)} 
      />
      </Form.Field>
      {/* <Form.Field>
        <NumberInput value={age} onChange={(event) => setAge(event.target.value)} />
      </Form.Field> */}
      <Form.Field className="form-text">
      <Label color="blue" size="massive" pointing="below">Image Url</Label>
        <Input
        icon={<Icon name="camera"/>}
        placeholder='Image Url'
        size="huge"
        value={imageUrl}
        onChange={(event) => setImageUrl(event.target.value)}
      />
      </Form.Field>
      <Form.Field className="form-text">
        <Label color="blue" size="massive" pointing="below">Age</Label>
        <Input placeholder='Age'
        size="huge" 
        value={age}
        onChange={(event) => setAge(event.target.value)} 
      />
      </Form.Field>
      <Label color="blue" size="massive" pointing="below">Bio</Label>
      <Form.Field
        style={{ fontSize: "28px" }}
        control={TextArea}
        placeholder='Tell us about yourself..'
        size="huge"
        value={bio}
        onChange={(event) => setBio(event.target.value)} 
      >
      </Form.Field>
      <Form.Field className="form-text">
        <Label color="blue" size="massive" pointing="below">Location</Label>
        <Input 
        placeholder='Location'
        size="huge"
        value={location}
        onChange={(event) => setLocation(event.target.value)} 
      />
      </Form.Field>
      <Label color="blue" size="massive" pointing="below">What are you looking for?</Label>
      <Dropdown 
        style={{ fontSize: "25px" }}
        text="What are you looking for?"
        placeholder='What are you looking for?' 
        fluid selection
        options={lookingForOptions} 
        size="massive"
        value={lookingFor}
        onChange={(event,data) => setLookingFor(data.value)}
      />
      <br></br>
      <Label color="blue" size="massive" pointing="below">Do you have kids?</Label>
      <Dropdown 
        style={{ fontSize: "25px" }}
        text="Do you have kids?"
        placeholder='Do you have kids?' 
        fluid selection
        options={hasKidsOptions} 
        size="huge"
        value={hasKids}
        onChange={(event,data) => setHasKids(data.value)}
      />
      <br></br>
      <Label color="blue" size="massive" pointing="below">Do you want kids?</Label>
      <Dropdown 
        style={{ fontSize: "25px" }}
        text="Do you want to have kids?"
        placeholder='Do you want to have kids?' 
        fluid selection
        options={wantsKidsOptions} 
        size="huge"
        value={wantsKids}
        onChange={(event,data) => setWantsKids(data.value)}
      />
      <br></br>
      <Button color="pink" size="massive" type='submit'>Submit</Button>
    </Form>
  )
}

export default EditProfile