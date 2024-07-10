// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract GradeManagementSystem {
    // This contract will manage student grades
    // Valid grade range is 0-100
    uint public totalStudents = 0;

    // Function to verify grade is within the valid range
    function verifyGrade(uint grade) public pure {
        assert(grade <= 100 && grade >= 0);
    }

    // Function to increase student count if grade is valid using revert
    function registerStudent(uint grade) public returns (uint) {
        if (grade > 100 || grade < 0) {
            revert("Invalid grade provided");
        }
        totalStudents += 1;
        return totalStudents;
    }

    // Function to validate grade is within the valid range using require
    function checkGrade(uint grade) public pure returns (bool) {
        require(grade <= 100 && grade >= 0, "Grade must be in the range 0-100");
        return true;
    }

    // Function to register student with grade checks using require, assert, and revert
    function registerStudentWithValidation(uint grade) public returns (uint) {
        require(grade <= 100 && grade >= 0, "Grade must be in the range 0-100");

        // Assert to confirm the grade is valid
        assert(grade <= 100 && grade >= 0);

        // Revert if grade is invalid (this is redundant but added for illustration)
        if (grade > 100 || grade < 0) {
            revert("Invalid grade provided");
        }

        totalStudents += 1;
        return totalStudents;
    }
}
