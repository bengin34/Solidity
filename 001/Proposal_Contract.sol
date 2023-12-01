// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ProposalContract {
    //Data

 
   //Owner 
    address owner;


    //Proposal Structure
    struct Proposal {
        string description;
        uint256 approve;
        uint256 reject;
        uint256 pass;
        uint256 total_vote_to_end;
        bool current_state;
        bool is_active;
    }
    //mapping (for keeping the proposal history )
    mapping(uint256 => Proposal) proposal_history;

    //array, for keeping voters
    address[] private voted_addresses;

    constructor() {
        owner = msg.sender;
        voted_addresses.push(msg.sender);
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }



    //Execute Functions 
    function setOwner(address new_owner) external onlyOwner {
        owner = new_owner;
    }

    //Query Functions

}
