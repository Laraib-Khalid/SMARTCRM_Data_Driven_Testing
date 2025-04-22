*** Settings ***
Library    SeleniumLibrary


*** Variables ***
# Login Folder XPath
${USERNAME_XPATH}    //*[@id="username"]
${PASSWORD_XPATH}    //*[@id="password"]
${LOGIN_BUTTON_XPATH}    //*[@id="Login"]

#${CRM_TEXT_VISIBLE}     xpath=/html/body/div[4]/div[1]/section/div[1]/div[1]/one-appnav/div/div/div/h1
${CRM_TEXT_VISIBLE}     xpath=//div[contains(@class,'logo')]//parent::span[@role="navigation"]
*** Keywords ***
Open My Browser
    Open Browser    https://raptorsconsulting--qasmartcrm.sandbox.lightning.force.com/  Chrome
    Maximize Browser Window


