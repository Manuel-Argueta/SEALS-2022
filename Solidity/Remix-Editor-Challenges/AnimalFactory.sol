//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract AnimalFactory {
    string public constant FACTORY_NAME = "Manuel's Animal Factory";
    uint public animalPopulation = 0;
    string[] public posNames = ["Dino", "Banjo", "Riley", "Guy", "Cameo", "Bud", "Laddie", "Pooky"];
    string[] public posColors = [ "red", "blue", "green", "yellow", "purple", "orange", "white", "black"];
    string[] public posSpecies = ["dormouse","goat","gazelle","squirrel","opossum","zebra","weasel","bear"];

    struct Animal {
        string name;
        uint age;
        string color;
        string species;
    }

    Animal[] public animalInventory;

    function addAnimal(string memory newName, uint newAge, string memory newColor, string memory newSpecies) public {
        animalInventory.push(Animal(newName,newAge,newColor,newSpecies));
        animalPopulation++;
    }

    function populateFactory(uint n) public returns (bool) {
        if (n < 8) {
            for (uint i = 0; i < n; i++) {
             addAnimal(posNames[i],(i+10),posColors[i],posSpecies[i]);
            }
            return true;
        } else {
            return false;
        }
    }

    function viewFactoryData() public view returns(Animal[] memory){
      return animalInventory;
    }
    
}