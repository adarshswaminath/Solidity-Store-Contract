// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract Store {
    address public owner; // Owner of contract
    uint public Total=0; // Total products
    // admin only modifier
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    constructor() {
        owner=msg.sender;
    }

    // struct for product list
    struct Item {
        string name;
        string category;
        uint256 id;
        uint256 available;
        uint256 price;
    }
    mapping(uint => Item) public item; // Mapping for struct
    
    // ####################### Functionalities of Owner ###################################

    // function to add items to the list
    function Add(
        string memory _name,
        string memory _category,
        uint256 _id,
        uint256 _available,
        uint256 _price
    ) public onlyOwner {
        Total++;
        item[Total] = Item(_name,_category,_id,_available,_price);
    }
    
    //  function to increase product availability
    function Increment(uint256 _id,uint256 _number) public onlyOwner {
        item[_id].available += _number;
    }
    // Function to transfer contract balance to owner
    function Transfer() public onlyOwner payable {
        (bool success,)=owner.call{ value:address(this).balance }("");
        require(success);
    }

    // ######################## End of Owner functionalities ##############################


}
