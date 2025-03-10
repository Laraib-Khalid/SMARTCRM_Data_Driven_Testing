*** Settings ***
Library     SeleniumLibrary
Resource    Login.resource
Suite Setup     Open My Browser
Library    DataDriver   Login_Data.xlsx    sheet_name=Sheet1
Test Template   Login Scenario

*** Keywords ***
Login Scenario
    [Arguments]     ${username}     ${password}
    Sleep    2s
    Input Text    ${USERNAME_XPATH}    ${username}
    Input Password    ${PASSWORD_XPATH}    ${password}
    Click Button    ${LOGIN_BUTTON_XPATH}
    IF    '${username}' == 'admin.qasmartcrm@bssuniversal.com' and '${password}' == 'Bss@2025'
        Wait Until Element Is Visible    ${CRM_TEXT_VISIBLE}     10s
    ELSE
        Page Should Contain    Please check your username and password. If you still can't log in, contact your Salesforce administrator.
    END



*** Test Cases ***
Smoke Login Test Case Using ${username} and ${password}
    [Documentation]    Test has only tag 'requirement: 42'.
    [Tags]    smoke    critical    login
    Login Scenario


Regression Login Test Case Using ${username} and ${password}
    [Documentation]    Test has only tag 'requirement: 41'.
    [Tags]    Regression
    Login Scenario