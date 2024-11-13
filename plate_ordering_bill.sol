//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Delivery
{
 address payable private store;
 address payable[] private customer;
 address private app;
 uint items;
 uint balance;
 uint income;
 
constructor()
{
    app=msg.sender;
    balance = 100;
    income = 0;
}


function no_Of_Items_Purchase(uint n) public payable returns(uint) 
{
    items = n;
    require(items>0,"Please enter valid number of items");
    customer.push(payable(msg.sender));
    return items;
}
  
  
function get_Self_Balance() public view returns(string memory, uint)
{
    return ("This is you Current Balance: ", balance);
}


function Deliver_Items() public payable returns(string memory)
{
    require(balance>items*5+1, "You do not sufficient Balance");
    balance -= items*5+1;
    return "Payment Successful: Out for Delivery";  
}
 

function Bill() public view returns (string memory, uint) 
{
    return ("This is your bill:", items*5+1);
}
}