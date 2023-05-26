// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ProposalContract {
   //Owner 
    address owner;

    struct Proposal {
        string description;
        uint256 approve;
        uint256 reject;
        uint256 pass;
        uint256 total_vote_to_end;
        bool current_state;
        bool is_active;
    }
}
