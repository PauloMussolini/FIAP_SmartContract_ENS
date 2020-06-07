pragma solidity = 0.6.6;
pragma experimental ABIEncoderV2;

contract Fiap {
    
    struct PartnerStruct {
        string Name;
        bool Exist;
    }
    
    mapping(address => PartnerStruct) private partnerMap;
    mapping(address => uint) private amountMap;
    address[] private partners;
    
    function partnerExists(address _address) private view returns (bool){
        PartnerStruct memory partner = partnerMap[_address];
        return partner.Exist;
    }
    
    function getPartnerName(address _address) public view returns(string memory Name){
        
        return partnerMap[_address].Name;
        
    }
    
    function getPartnerNameList() public view returns(string[] memory NameList){
        
        string[] memory partnerName = new string[](partners.length);
        
        for (uint i = 0; i < partners.length; i++) {
            PartnerStruct memory partner = partnerMap[partners[i]];
            partnerName[i] = partner.Name;
        }
        return partnerName;
    }
    
    function getPartnerAmount(address _address) public view returns (uint Amount){
        require(partnerExists(_address), 'Address not exists!');
        return amountMap[_address];
    }
    
    function insPartner(address _address, string memory _name) public returns (bool succeed){
        require(!partnerExists(_address), 'Address already exists!');
        partnerMap[_address].Name = _name;
        partnerMap[_address].Exist = true;
        partners.push(_address);
    }
    
    function payPartner(address _to) payable public returns (bool succeed){
        require(partnerExists(_to), 'Address destination must be a Partner!');
        require(partnerExists(msg.sender), 'Sender must be a Partner!');
        require(msg.sender != _to, 'Address Destination must be diferent than Sender');
        require(msg.value > 0, 'Value must be higher than 0!');
        amountMap[_to] += msg.value;
    } 


}