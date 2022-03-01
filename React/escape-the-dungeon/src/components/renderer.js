import React, { PureComponent } from "react";

import pepe from "../assets/pepeSprite.png";

class Pepe extends PureComponent {
  render() {
    const size = 100;
    const x = this.props.x - size / 2;
    const y = this.props.y - size / 2;
    return (
      <img
        src={pepe}
        alt = "Pepe The Frog"
        style={{
          position: "absolute",
          width: size,
          height: size,
          left: x,
          top: y,
        }}
      />
    );
  }
}

export { Pepe };
