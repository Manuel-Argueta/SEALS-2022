import React from 'react';
import ReactDOM from 'react-dom';

import { GameEngine } from "react-game-engine";

import './index.css';

import { Pepe } from './components/renderer';
import { MovePepe } from './components/systems';

import dungeon from './assets/dungeonBG.jpg'

import reportWebVitals from './reportWebVitals';

ReactDOM.render(
  <React.StrictMode>
    <div id = "gameWindow">
    <GameEngine
        style={{ width: 800, height: 600, backgroundImage: `url(${dungeon})`,backgroundSize: 'cover'}}
        systems={[MovePepe]}
        entities={{
          pepeChar: { x: 200,  y: 200, renderer: <Pepe />}
        }}>

      </GameEngine>
      </div>
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
