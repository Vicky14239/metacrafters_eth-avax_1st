// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Voting {
    mapping(address => bool) public voters;
    mapping(string => uint256) public votes;


    function registerVoter(address voter) public {
        require(!voters[voter], "Voter is already registered");
        voters[voter] = true;
    }

    function vote(string memory candidate) public {
        require(voters[msg.sender], "You must be a registered voter");

        // Revert if the candidate name is empty
        if (bytes(candidate).length == 0) {
            revert("Invalid candidate name");
        }

        votes[candidate]++;
    }


    function getVotes(string memory candidate) public view returns (uint256) {
        assert(votes[candidate] >= 0);
        return votes[candidate];
    }
}
