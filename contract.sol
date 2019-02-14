pragma solidity >=0.4.0 <0.6.0
contract FuncConcert
{
address owner;
uint public tickets;
uint public contract price = 1 ether;
mapping (address=> uint) public purchasers;

function FuncConcert()
{
owner= msg.sender;
tickets= 5;
}
function buyTickets(uint amount) payable
{
if(msg.value !=(amount*price) || amount > tickets)
{
throw;
}
purchasers[msg.sender] += amount;
tickets -=amount;
}
}
