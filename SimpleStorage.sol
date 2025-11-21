// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract SimpleStorage{

    uint256 public myfavoriteNumber;
    
   // uint256[] listOfFavoriteNumbers;
   struct Person{
    uint256 favoriteNumber;
    string name;

   }

    //dynamic Array
    Person[] public listOfPeople;


 /*   Person public pat = Person({favoriteNumber: 7, name: "pat"}); */

    function store (uint256 _favoriteNumber) public{
        myfavoriteNumber = _favoriteNumber;
    }

    function  retreive() public view returns(uint256){
        return myfavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push( Person(_favoriteNumber, _name));
    }
}