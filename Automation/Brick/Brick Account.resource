*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# Create Brick Account XPath
${NEW_BUTTON_XPATH}     xpath=//a[@title="New"]
#${BRICK_RADIO_OPTION_XAPTH}     xpath=(//span[contains(@class,'slds-form-element__label')])[2]
${BRICK_RADIO_OPTION_XAPTH}     xpath=(//span[contains(@class,'slds-radio--faux')])[2]
${NEXT_BUTTON_XPATH}    xpath=//button[contains(.,'Next')]
${NEW_BRICK_NAME_XPATH}     xpath=//input[@name='Name']
#${BRICK_NAME}   Test
${STATUS_DROPDOWN_XPATH}    xpath=//button[@aria-label='Status']
${STATUS_OPTION_XPATH}    xpath=//lightning-base-combobox-item[@role='option' and @data-value='Active']
${BRICK_DESCRIPTION_XPATH}   xpath=//textarea[@class='slds-textarea']
#${BRICK_DESCRIPTION}       This is the test Brick description.
${ACCOUNT_CHANNEL_DROPDOWN_XPATH}     xpath=//button[@aria-label='Channel']
${BRICK_CHANNEL_OPTION_XPATH}     xpath=//lightning-base-combobox-item[@role='option' and @data-value='Brick']
${COUNTRY_DROPDOWN_XPATH}     xpath=//button[@aria-label='Country']
${COUNTRY_OPTION_XPATH}     xpath=//lightning-base-combobox-item[@role='option' and @data-value='United States']
#${BRICK_COUNTRY_DROPDOWN_XPATH}     xpath=//div[@data-target-selection-name="sfdc:RecordField.Account.Country__c"]//button[@aria-label='Country']

# Search and Create Brick Account XPath
${APP_LAUNCHER_BUTTON}      xpath=//button[@title='App Launcher']
${SEARCH_APP}       xpath=//input[contains(@class,'slds-input') and contains(@placeholder,'Search apps and items')]
${ENTER_ACCOUNT_TEXT}     Accounts
${RESULT_ACCOUNT_TEXT}     xpath=//p[contains(.,'Accounts')]
${ACCOUNT_PAGE_HEADING}     xpath=//h1[@class='slds-var-p-right_x-small'][contains(.,'Accounts')]
${SEARCH_XPATH}    xpath=//input[@placeholder='Search this list...']
#${SEARCH_BRICK_NAME}       Test
${SEARCH_BRICK_NAME_XPath}    //a[contains(@title,"Test")]  # Replace with the actual locator of the "brick name" element
${SAVE_BUTTON_XPATH}     xpath=//button[@name='SaveEdit']
