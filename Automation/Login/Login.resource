*** Settings ***
Library    SeleniumLibrary


*** Variables ***
# Login Folder XPath
${USERNAME_XPATH}    //*[@id="username"]
${PASSWORD_XPATH}    //*[@id="password"]
${LOGIN_BUTTON_XPATH}    //*[@id="Login"]

${CRM_TEXT_VISIBLE}     xpath=/html/body/div[4]/div[1]/section/div[1]/div[1]/one-appnav/div/div/div/h1

*** Keywords ***

#Input Username
#    [Arguments]     ${username}
#    Input Text    ${USERNAME_XPATH}    ${username}
#
#Input Pwd
#    [Arguments]     ${password}
#    Input Password    ${PASSWORD_XPATH}    ${password}

Open My Browser
    Open Browser    https://raptorsconsulting--qasmartcrm.sandbox.lightning.force.com/  Chrome
    Maximize Browser Window


