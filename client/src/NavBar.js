import React from 'react'
import { Menu, Icon, Button } from 'semantic-ui-react';
import {Link} from 'react-router-dom';

function NavBar() {
  return (
    <div>
      <Menu className='menu'>
      <Menu.Item>
        <Link to="/">
          <Icon name="home" size="huge" />
        </Link>
      </Menu.Item>
      <Menu.Item>
        <Link to="/profilesetup">
          <Icon name="edit" size="huge" />
        </Link>
      </Menu.Item>
      <Menu.Item>
        <Link to="/swipemode">
          <Button color="blue" size="huge">Swipe Mode</Button>
        </Link>
      </Menu.Item>
      <Menu.Item>
        <Link to="/matches">
          <Icon name="heart" size="huge" />
        </Link>
      </Menu.Item>
      </Menu>
    </div>
  )
}

export default NavBar