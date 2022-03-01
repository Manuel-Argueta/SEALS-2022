//Takes care of the movement

const MovePepe = (entities, { input }) => {
    function handleKeyPress(event) {
      const pepeChar = entities["pepeChar"];
      console.log(pepeChar.x, pepeChar.y)
      let keyPress = event.find((x) => x.name != undefined)
      if (keyPress != undefined) {
        if (keyPress.payload.key === 'w' && pepeChar.y > 50){
          pepeChar.y -= 10;
        }
        if (keyPress.payload.key === 'a' && pepeChar.x > 50 ){
          pepeChar.x -= 10;
        }
        if (keyPress.payload.key === 's' && pepeChar.y < 550 ){
          pepeChar.y += 10;
        }
        if (keyPress.payload.key === 'd' && pepeChar.x < 750){
          pepeChar.x += 10;
        }
      }
    }
    handleKeyPress(input)
    return entities;
  };
  
  export { MovePepe };