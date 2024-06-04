j// SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

contract TravelFundraising {

    address public owner;
    uint256 public goal;
    uint256 public totalDonations;
    bool public isFundraisingOpen;
    bool public isGoalReached;

    // Constructor that initializes the contract 
    constructor(uint256 _goalInWei) {
        owner = msg.sender;
        goal = _goalInWei;
        totalDonations = 0;
        isFundraisingOpen = true;
        isGoalReached = false;
    }


    // Modifier to assure certain actions can be performed only by the contract owner
    modifier onlyOwner () {
        require(owner == msg.sender, "Only the contract owner can perform this action");
        _;
    }


    // Internal function that checks if the fundraising goal has been reached and conseguently updates the status
    function updateIsGoalReached() internal {
        if (address(this).balance >= goal) {
            isGoalReached = true;
        }
    }


    // External function to donate ether to the fundraising
    function donate() external payable {
        require(isFundraisingOpen, "The fundraising is closed and is no longer accepting donations");
        require(msg.value > 0, "Be sure not to make an empty donation");
        totalDonations += 1;
    }


    // Function that allows the contract owner to close the fundraising once the goal has been reached
    function closeFundraising() external onlyOwner {
        require(isFundraisingOpen, "The fundraising is already closed");
        updateIsGoalReached();
        require(isGoalReached, "The fundraising goal has not been reached");
        isFundraisingOpen = false;
    }
    

    // Function that allows the contract owner to withdraw funds once the fundraising is closed
    function withdrawFunds(uint256 _amount) external onlyOwner {
        require(!isFundraisingOpen, "The fundraising is still open");
        require(_amount > 0, "Amount must be greater than zero");
        uint256 _contractBalance = address(this).balance;
        require(_contractBalance >= _amount, "Contract has not enough funds to withdraw");
        payable(msg.sender).transfer(_amount);
    } 


    // Function that returns the amount of ether raised by the contract in Wei unit
    function getFundraisingBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
