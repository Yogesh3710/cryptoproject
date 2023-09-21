// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

contract Token{
    uint256 pet_id;
    uint256 item_id;
    address owner;

    mapping(uint256=>address) Addpet;
    mapping(uint256=>address) Additem;

    event Pet(uint256 pet_id, address indexed owner);
    event Item(uint256 item_id, address indexed owner);

    function buyPet(uint _pet_id) public{
        Addpet[_pet_id] = msg.sender;
        
        emit Pet(_pet_id,msg.sender);
    }

    function buyItems(uint _item_id) public{
        Additem[_item_id] = msg.sender;

        emit Item(_item_id,msg.sender);
    }

    function DisplayPetOwner(uint _pet) public view returns(address){
        return Addpet[_pet];
    }

    function Displayitemowner(uint _item) public view returns(address){
        return Additem[_item];
    }
}