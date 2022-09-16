import React from 'react'
import { useNavigate } from 'react-router-dom';
import { Menu, Icon, Button } from 'semantic-ui-react';
import { Link } from 'react-router-dom';

function NavBar({ user, onLogout }) {

  const navigate = useNavigate()

  function handleLogoutClick() {
    fetch("/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        onLogout(null);
        navigate(`/`)
      }
    });
  }

  return (
    <div>
      <Menu className='menu' inverted>
      { user === null ? (
        <>
          <Menu.Item>
            <Link to="/">
              <Icon name="home" size="huge" />
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link to="/users/new">
              <Button className="card-buttons" color="blue" size="huge">Sign Up</Button>
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link to="/login">
              <Button className="card-buttons" color="blue" size="huge">Log In</Button>
            </Link>
          </Menu.Item>
        </>
      ) : ( 
        <>
          <Menu.Item>
            <Link to="/">
              <Icon name="home" size="huge" />
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link to="/swipemode">
              <Button className="card-buttons" color="blue" size="huge">Swipe Mode</Button>
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link to="/matches">
              <Icon name="heart" size="huge" />
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link to="/editprofile">
              <Icon name="edit" size="huge" />
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Button variant="outline" onClick={handleLogoutClick}>
              Logout
            </Button>
          </Menu.Item>
        </>
    )}
    </Menu>
    </div>
  )
}

export default NavBar