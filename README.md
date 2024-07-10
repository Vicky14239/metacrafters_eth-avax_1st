# Functions and Errors
# Election System:- A Simple Contract to vote for candidates 
# Description 
The Electiom smart contract provides functionality for voter registration, voting, and retrieving vote counts for candidates. Error handling is implemented using require, revert, and assert to ensure the contract behaves correctly and securely.The smart contract ensures that only registered voters can cast votes and handles various edge cases to maintain the integrity of the voting process.
# Execution
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Further steps,

- Create a file named VoteIntegrity.sol and  write code into it and after that compile it.
- After compiling the file proceed  to the deploy section and deploy it.
- Now we can see that vote, votes, register voter and voters are visible there.
- several statements like require, revert, and assert are used to verify that the voting requirements are met.
# Contract Details
# state variables
- voters (mapping(address => bool)): Keeps track of registered voters.
- votes (mapping(string => uint256)): Keeps track of the votes each candidate has received.
# Functions
1. registerVoter(address voter) public
- This function registers a voter. It uses the require statement to ensure that the voter is not already registered
2. vote(string memory candidate) public
- This function allows a registered voter to vote for a candidate. It uses the require statement to ensure that the voter is registered, and it reverts the transaction with an error message if the candidate name is empty
3. getVotes(string memory candidate) public view returns (uint256)
 - This function returns the number of votes a candidate has received. It uses the assert statement to ensure that the number of votes is non-negative.
# Project By
- VICKY KUMAR



