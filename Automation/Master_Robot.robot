*** Settings ***
Library     SeleniumLibrary
Resource    Login/Login.robot
Resource    Brick/Brick.robot
Suite Setup    Setup Test Suites

*** Test Cases ***
Run Login Suite
    [Documentation]    Calling the login test suite
    [Tags]    smoke    login
    Suite Test    login_suite.robot

Run Brick Suite
    [Documentation]    Calling the brick test suite
    [Tags]    smoke    brick
    Suite Test    brick_suite.robot

*** Keywords ***
Setup Test Suites
    [Documentation]    Here you can do any global setup for your combined test suite
