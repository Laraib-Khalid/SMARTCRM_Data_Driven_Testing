#*** Settings ***
#Library     SeleniumLibrary
#Resource    Login/Login.robot
#Resource    Brick/Brick.robot
#Resource    Hospital/Hospital Account.resource
#
#*** Test Cases ***
##Run All Robot Files
##    [Documentation]    Running all tests from multiple test files
##    Run Keywords    Setup Suite
##    Run Keywords    Teardown Suite
#
#Run Login Tests
#    Run Test Suite    Login.robot
#
#Run Brick Tests
#    Run Test Suite    Brick.robot
#*** Keywords ***
#Setup Suite
#    Log    Setting up the entire test suite
#
#Teardown Suite
#    Log    Tearing down the entire test suite
