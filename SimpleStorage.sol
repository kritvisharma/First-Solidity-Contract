//SPDX-License-Identifier:MIT
 pragma solidity ^0.8.8;

contract SimpleStorage{
    uint256 myfavouriteNumber; //storage internal variable
    
    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    // Person public krit = Person(9,"Krit");
    Person[] public listofPeople;

    mapping(string => uint256) public nametonum;

    function store(uint256 _favno) public {
        myfavouriteNumber = _favno;

    }

    //view,pure - no gas, since no modification of state

    function retrieve() public view returns(uint256) {
       return myfavouriteNumber; //view and pure disallow any modification of state
    }

    //calldata, memory, storage 

    function addfunc(string memory _name, uint256 _favno) public {
        listofPeople.push(Person(_favno,_name));
        nametonum[_name] = _favno;

    }
}
