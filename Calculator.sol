// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

contract SimpleStorage{

int result;
string[] public row;

function add(int x, int y) public{
    result=x+y;
}
function sub(int x, int y) public{
    result=x-y;
}
function mul(int x, int y) public returns(string memory){
    result=x*y;
}
function div(int x, int y) public{
    require(y!=0,'Dividing by zero is not allowed');
    result=x/y;
}
function get() public view returns(int){
    return result;
}
    string[] strings;

    // push one string to array
    function pushToStrings(string memory _data) public{
        strings.push(_data);
    }
    
    //get all the strings in array form
    function GetAllStrings() view public returns(string[] memory){
        return strings;
    }

    //get nth string of strings array
    function GetNthStrings(uint x) view public returns(string memory){
        return strings[x];
    }

    //push array of strings in strings
    function pushStringsArray(string[] memory someData) public{
        for (uint i=0; i < someData.length; i++) {
           strings.push(someData[i]);
        }
    }
    
    //change whole strings, take array of strings as input
    function changeWholeString(string[] memory someData) public{
       strings=someData;
}
    function fee_calculation(uint amount) external pure returns(uint){
      require((amount/10000)*10000==amount,'very small value');
      return amount*145/1000;
      //considering pct is 1.45 i.e. 145 basis points
    }
}
