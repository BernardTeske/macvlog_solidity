pragma solidity^0.4.0;

contract BikeStorage{
    
    struct Bike {
        string name;
        string registernumber;
        address owner;
    }
    
    Bike[] bikes;
    mapping(string => uint) ownerToBike;

    function addBike(string _name, string _registernumber) returns(uint) {
        address owner = msg.sender;
        uint id = bikes.push(Bike(_name, _registernumber, owner));
        ownerToBike[_registernumber] = id;
        return id;
    }
}