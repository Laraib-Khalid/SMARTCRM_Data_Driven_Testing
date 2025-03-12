*** Settings ***
Library    SeleniumLibrary


*** Variables ***
# Login Folder XPath
${USERNAME_XPATH}    //*[@id="username"]
${PASSWORD_XPATH}    //*[@id="password"]
${LOGIN_BUTTON_XPATH}    //*[@id="Login"]

${CRM_TEXT_VISIBLE}     xpath=/html/body/div[4]/div[1]/section/div[1]/div[1]/one-appnav/div/div/div/h1

*** Keywords ***
Open My Browser
    Open Browser    https://raptorsconsulting--qasmartcrm.sandbox.lightning.force.com/  Edge
    Maximize Browser Window


