*** Settings ***
Library     SeleniumLibrary
Resource    Brick Account.resource
Library    DataDriver   Brick_Data.xlsx    sheet_name=Sheet1
Test Template   Search and Create Brick Account

*** Keywords ***
Create Brick
    [Arguments]     ${BRICK_NAME}     ${BRICK_DESCRIPTION}
    Wait Until Element Is Visible   ${NEW_BUTTON_XPATH}     10s
    Click Element    ${NEW_BUTTON_XPATH}
    Wait Until Page Contains    New Account    10s
    Click Element   ${BRICK_RADIO_OPTION_XAPTH}
    Click Button    ${NEXT_BUTTON_XPATH}
    Wait Until Page Contains    New Account: Brick  15s

    # Fill the Brick Account detail
    Input Text    ${NEW_BRICK_NAME_XPATH}    ${BRICK_NAME}
#    Set Global Variable    ${BRICK_NAME}    ${NEW_BRICK_NAME}
    Click Button    ${STATUS_DROPDOWN_XPATH}
    Click Element    ${STATUS_OPTION_XPATH}
    Input Text       ${BRICK_DESCRIPTION_XPATH}   ${BRICK_DESCRIPTION}
    Click Button    ${ACCOUNT_CHANNEL_DROPDOWN_XPATH}
    Click Element    ${BRICK_CHANNEL_OPTION_XPATH}
    Set Focus To Element     ${COUNTRY_DROPDOWN_XPATH}
    Click Button    ${COUNTRY_DROPDOWN_XPATH}
    Click Element   ${COUNTRY_OPTION_XPATH}
    Click Button    ${SAVE_BUTTON_XPATH}

Search and Create Brick Account
    [Arguments]     ${BRICK_NAME}     ${BRICK_DESCRIPTION}
    Sleep    10s
    Click Button    ${APP_LAUNCHER_BUTTON}
#    Sleep    10s
    Wait Until Element Is Visible    ${SEARCH_APP}    10s
    Input Text   ${SEARCH_APP}    ${ENTER_ACCOUNT_TEXT}
#    Sleep    20s
    Wait Until Element Is Visible    ${RESULT_ACCOUNT_TEXT}    10s
    Click Element    ${RESULT_ACCOUNT_TEXT}
    Wait Until Element Is Visible   ${ACCOUNT_PAGE_HEADING}     10s
    Clear Element Text    ${SEARCH_XPATH}
    Sleep    10s
    Input Text     ${SEARCH_XPATH}   ${BRICK_NAME}
    Sleep    5s
    Press Key    ${SEARCH_XPATH}   \\13
    Sleep    10s
    ${brick_exists}=    Run Keyword And Return Status    Element Should Be Visible    ${SEARCH_BRICK_NAME_XPath}
#

    Run Keyword If    ${brick_exists}
    ...    Click Element    ${SEARCH_BRICK_NAME_XPath}

    ...    ELSE
    ...    Create Brick    ${BRICK_NAME}    ${BRICK_DESCRIPTION}

*** Test Cases ***
Smoke Brick Test Case Using ${BRICK_NAME} and ${BRICK_DESCRIPTION}
    [Documentation]    Test has only tag 'requirement: 42'.
    [Tags]    smoke
    Search and Create Brick Account


Regression Brick Test Case Using ${BRICK_NAME} and ${BRICK_DESCRIPTION}
    [Documentation]    Test has only tag 'requirement: 41'.
    [Tags]    Regression
    Search and Create Brick Account