import React, { useState } from "react";
import { useNavigate } from 'react-router-dom';
import { Button, Form, Dropdown, Input, Icon, TextArea, Label, Message } from 'semantic-ui-react';

function SignUpForm({ onSignUp }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [name, setName] = useState("");
  const [imageUrl, setImageUrl] = useState("");
  const [bio, setBio] = useState("");
  const [age, setAge] = useState("");
  const [sex, setSex] = useState("");
  const [breed, setBreed] = useState("");
  const [size, setSize] = useState("");
  const [location, setLocation] = useState("");
  const [lookingFor, setLookingFor] = useState("");
  const [hasKids, setHasKids] = useState(false); 
  const [wantsKids, setWantsKids] = useState(false);
  const [errors, setErrors] = useState([]);

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

  const navigate = useNavigate()

  function handleSubmit(e) {
    e.preventDefault()
        const postReqObj = {
            username,
            password, 
            name,
            image_url: imageUrl,
            bio,
            sex,
            age,
            location,
            breed,
            size,
            looking_for: lookingFor,
            has_kids: hasKids,
            wants_kids: wantsKids
        }
       
        fetch(`/users`,{
          method:'POST',
          headers:{'Content-Type': 'application/json'},
          body:JSON.stringify(postReqObj)
        })
        .then(res => {
            if(res.ok){
                res.json().then(user => {
                  onSignUp(user)
                  navigate(`/`)
                })
            } else {
                // res.json().then(json => setErrors(Object.entries(json.errors)))
            }
        })
  }

  return (
    <>
    <Form onSubmit={handleSubmit} >
      <Form.Field>
      <Label color="blue" size="massive" pointing="below" htmlFor="username">Username</Label>
        <Input
          size="huge"
          placeholder="Username"
          type="text"
          id="username"
          value={username}
          onChange={(event) => setUsername(event.target.value)}
        />
      </Form.Field>
      <Form.Field>
        <Label color="blue" size="massive" pointing="below" htmlFor="password">Password</Label>
        <Input
          size="huge"
          placeholder="Password"
          type="password"
          id="password"
          value={password}
          onChange={(event) => setPassword(event.target.value)}
          autoComplete="current-password"
      />
      </Form.Field>
      <Form.Field className="form-text">
        <Label color="blue" size="massive" pointing="below">Name</Label>
        <Input 
        placeholder='Name'
        size="huge" 
        value={name}
        onChange={(event) => setName(event.target.value)} 
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
        <Label color="blue" size="massive" pointing="below">Sex</Label>
        <Input placeholder='Sex'
        size="huge" 
        value={sex}
        onChange={(event) => setSex(event.target.value)} 
      />
      </Form.Field>
      <Form.Field className="form-text">
        <Label color="blue" size="massive" pointing="below">Breed</Label>
        <Input placeholder='Breed'
        size="huge" 
        value={breed}
        onChange={(event) => setBreed(event.target.value)} 
      />
      </Form.Field>
      <Form.Field className="form-text">
        <Label color="blue" size="massive" pointing="below">Size</Label>
        <Input placeholder='Breed'
        size="huge" 
        value={size}
        onChange={(event) => setSize(event.target.value)} 
      />
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
        fluid selection
        options={wantsKidsOptions} 
        size="huge"
        value={wantsKids}
        onChange={(event,data) => setWantsKids(data.value)}
      />
      <br></br>
      <Form.Field>
        {/* <Message
          error
          header='There was some errors with your submission'
          list={errors}
        /> */}
      </Form.Field>
      <Button color="pink" size="massive" type='submit'>Submit</Button>
    </Form>
      {errors? <div>{errors}</div>:null}
    </>
  )
}

export default SignUpForm
