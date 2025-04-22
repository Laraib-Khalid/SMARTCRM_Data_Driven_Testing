*** Settings ***
Library     SeleniumLibrary
Resource    Hospital Account.resource
Library    DataDriver   Hospital_Data.xlsx    sheet_name=Sheet1
Test Template   Search and Create Hospital Account

*** Keywords ***
Create Hospital
    [Arguments]     ${ACCOUNT_NAME}     ${BRICK_NAME}     ${BILLING_ADDRESS}
     Wait Until Element Is Visible    ${NEW_BUTTON_XPATH}    10s
    Click Element    ${NEW_BUTTON_XPATH}
    Wait Until Page Contains    New Account    10s
    Click Button    ${NEXT_BUTTON_XPATH}
    Wait Until Page Contains    New Account: Clinic/Hospital  15s

    # Fill the Hospital Account details
    Input Text        ${NEW_HOSPITAL_ACCOUNT_NAME_XPATH}    ${ACCOUNT_NAME}
    Click Button    ${STATUS_DROPDOWN_XPATH}
    Click Element    ${STATUS_OPTION_XPATH}
    Click Button    ${ACCOUNT_CHANNEL_DROPDOWN_XPATH}
    Click Element    ${NEW_HOSPITAL_ACCOUNT_CHANNEL_OPTION_XPATH}
    Click Button    ${COUNTRY_DROPDOWN_XPATH}
    Click Element    ${COUNTRY_OPTION_XPATH}
    Scroll Element Into View    ${ACCOUNT_BRICK_DROPDOWN_XPATH}
    Input Text    ${ACCOUNT_BRICK_DROPDOWN_XPATH}   ${BRICK_NAME}
    Wait Until Element Is Visible    ${ACCOUNT_BRICK_DROPDOWN_OPTIONS_XPATH}    10s
    Click Element    ${ACCOUNT_BRICK_OPTION_XPATH}
    Sleep    5s
    Scroll Element Into View    ${ACCOUNT_BILLING_DROPDOWN_XPATH}
#    Click Element    xpath=//input[normalize-space(@placeholder)='Search Address']
    Input Text    ${ACCOUNT_BILLING_DROPDOWN_XPATH}    ${BILLING_ADDRESS}
    Sleep    10s
    Wait Until Element Is Visible    ${ACCOUNT_BILLING_SEARCH_RESULT}   10s
#    Sleep    50s
    Click Element    ${ACCOUNT_BILLING_SEARCH_RESULT}
    Sleep    10s
    Click Button    ${SAVE_BUTTON_XPATH}

Search and Create Hospital Account
    [Arguments]     ${ACCOUNT_NAME}     ${BRICK_NAME}     ${BILLING_ADDRESS}
    Sleep    10s
    Click Button    ${APP_LAUNCHER_BUTTON}
    Wait Until Element Is Visible    ${SEARCH_APP}    10s
    Input Text   ${SEARCH_APP}    ${ENTER_ACCOUNT_TEXT}
#    Sleep    20s
    Wait Until Element Is Visible    ${RESULT_ACCOUNT_TEXT}   10s
    Click Element    ${RESULT_ACCOUNT_TEXT}
    Wait Until Element Is Visible   ${ACCOUNT_PAGE_HEADING}     10s
    Sleep    5s
#    Clear Element Text  ${SEARCH_ACCOUNT_XPATH}
    Input Text   ${SEARCH_XPATH}    ${ACCOUNT_NAME}
    Sleep    10s
    Press Key    ${SEARCH_XPATH}    \\13
    ${SEARCH_HOSPITAL_NAME}  Set Variable    xpath=//a[@title='${ACCOUNT_NAME}']
    Sleep    10s

    ${hospital_exists}=    Run Keyword And Return Status    Element Should Be Visible    ${SEARCH_HOSPITAL_NAME}
    Run Keyword If    ${hospital_exists}
    ...    Click Element    ${SEARCH_HOSPITAL_NAME}

    ...    ELSE
    ...    Create Hospital    ${ACCOUNT_NAME}     ${BRICK_NAME}     ${BILLING_ADDRESS}


*** Test Cases ***


Regression Account Test Case Using ${ACCOUNT_NAME}, ${BRICK_NAME} and ${BILLING_ADDRESS}
    [Documentation]    Test has only tag 'requirement: 41'.
    [Tags]    Regression
    Search and Create Hospital Account

Smoke Account Test Case Using ${ACCOUNT_NAME}, ${BRICK_NAME} and ${BILLING_ADDRESS}
    [Documentation]    Test has only tag 'requirement: 42'.
    [Tags]    smoke
    Search and Create Hospital Account
