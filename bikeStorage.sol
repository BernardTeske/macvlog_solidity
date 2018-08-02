pragma solidity^0.4.0;

contract BikeStorage{
    
    struct Bike {
        string name;
        string registernumber;
        address owner;
    }
    
    Bike[] bikes;
    mapping(string => uint) ownerToBike;

    function addBike(string _name, string _registernumber) payable {
        require(msg.value >= 100);
        address owner = msg.sender;
        uint id = bikes.push(Bike(_name, _registernumber, owner));
        ownerToBike[_registernumber] = id;
    }
    
    function getBike(string _registernumber) returns (string, address){
        uint id = ownerToBike[_registernumber];
        return (bikes[id-1].name, bikes[id-1].owner);
    }
}