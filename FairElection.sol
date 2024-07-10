// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Election {
    mapping(address => bool) public registeredVoters;
    mapping(string => uint256) public candidateVotes;

    function addVoter(address voter) public {
        require(!registeredVoters[voter], "Voter is already registered");
        registeredVoters[voter] = true;
    }

    function castVote(string memory candidate) public {
        require(registeredVoters[msg.sender], "You must be a registered voter");

        // Revert if the candidate name is empty
        if (bytes(candidate).length == 0) {
            revert("Invalid candidate name");
        }

        candidateVotes[candidate]++;
    }

    function countVotes(string memory candidate) public view returns (uint256) {
        assert(candidateVotes[candidate] >= 0);
        return candidateVotes[candidate];
    }
}
