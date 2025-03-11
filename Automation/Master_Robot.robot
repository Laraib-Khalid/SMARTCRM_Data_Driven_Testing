*** Settings ***
Library     SeleniumLibrary
Resource    Login/Login.robot
Resource    Brick/Brick.robot

*** Test Cases ***
Run All Robot Files
    [Documentation]    Running all tests from multiple test files
    Run Keywords    Setup Suite
    Run Keywords    Teardown Suite

*** Keywords ***
Setup Suite
    Log    Setting up the entire test suite

Teardown Suite
    Log    Tearing down the entire test suite
