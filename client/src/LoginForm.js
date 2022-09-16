import React, { useState } from "react";
import { useNavigate } from 'react-router-dom';
import { Message, Input, Form, Label, Button } from "semantic-ui-react";

function LoginForm({ onLogin }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [errors, setErrors] = useState([]);
  // const [isLoading, setIsLoading] = useState(false);

  const navigate = useNavigate()

  function handleSubmit(e){
    e.preventDefault()
    const user = {
        username,
        password
    }
    // Logs in user
    fetch(`/login`,{
      method:'POST',
      headers:{'Content-Type': 'application/json'},
      body:JSON.stringify(user)
    })
    .then(res => {
        if(res.ok){
            res.json().then(user => {
                onLogin(user)
                navigate(`/`)
            })
        }else {
            res.json().then(json => setErrors(json.errors))
        }
    })
   
}

  return (
    <Form onSubmit={handleSubmit}>
      <Form.Field>
        <Label size="huge" htmlFor="username">Username</Label>
        <Input
          type="text"
          id="username"
          autoComplete="off"
          size="huge"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
      </Form.Field>
      <Form.Field>
        <Label size="huge" htmlFor="password">Password</Label>
        <Input
          size="huge"
          type="password"
          id="password"
          autoComplete="current-password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
      </Form.Field>
      <Form.Field>
        <Button size="huge" variant="fill" color="pink" type="submit">
          Login
        </Button>
      </Form.Field>
      <Form.Field>
      <Message
        error
        header='There was some errors with your submission'
        list={errors}
      />
      </Form.Field>
    </Form>
  );
}

export default LoginForm;
