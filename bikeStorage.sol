pragma solidity^0.4.0;

contract BikeStorage{

    function addBike(string _name, string _registernumber) returns(string, string, address) {
        address owner = msg.sender;
        return (_name, _registernumber, owner);
    }
}