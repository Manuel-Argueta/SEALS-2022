import React from "react";
import {NavLink} from "react-router-dom";
import Nav from "react-bootstrap/Nav";

function Navbar() {
  return (
    <Nav>
        <Nav.Item>
             <NavLink to="/">
                 Home
             </NavLink>
        </Nav.Item>
            <NavLink to="/About">
                 About
             </NavLink>
        <Nav.Item>
            <NavLink to="/Contact">
                Contact
             </NavLink>
        </Nav.Item>
    </Nav>
  )
}

export default Navbar;
