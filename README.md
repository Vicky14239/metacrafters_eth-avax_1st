# Metacrafters_eth+avax_1st
# GradeManagementSystem
# Overview
The GradeManagementSystem is a Solidity smart contract designed to manage and validate student grades within a specified range. This contract ensures that grades fall within the range of 0 to 100, inclusive. It provides functionality to validate, add, and check the validity of grades.
# Contract Details
# State Variables
- totalStudents (uint): Keeps track of the number of valid students added.
# Functions
- verifyGrade(uint grade) public pure
This function checks if a given grade is within the valid range (0 to 100) using the assert statement.
function verifyGrade(uint grade) public pure {
    assert(grade >= 0 && grade <= 100);
}

- registerStudent(uint grade) public returns (uint)
This function increments the totalStudents count if the provided grade is valid. If the grade is not valid, it reverts the transaction with an error message.
- checkGrade(uint grade) public pure returns (bool)
This function checks if the provided grade is within the valid range using the require statement. It returns true if the grade is valid.
- registerStudentWithValidation(uint grade) public returns (uint)
This function combines the use of require, assert, and revert to ensure the grade is valid before adding it to the totalStudents count.
# Usage
Deploy the GradeManagementSystem contract on the Ethereum blockchain. The functions can be called to validate, add, and check grades as per the requirements.
# Example
- Deploy the contract.
- Call registerStudent(85) to add a valid student grade.
- Call checkGrade(90) to check if a grade is valid.
- Call registerStudentWithValidation(75) to add a student grade with all checks.
# Project by
- VICKY KUMAR





 
