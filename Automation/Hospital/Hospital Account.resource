*** Settings ***
Library     SeleniumLibrary
Resource    ../Brick/Brick Account.resource

*** Variables ***
# Create Hospital XPath values
${NEW_BUTTON_XPATH}         xpath=//a[@title="New"]
${NEXT_BUTTON_XPATH}    xpath=//button[contains(.,'Next')]
${NEW_HOSPITAL_ACCOUNT_NAME_XPATH}    xpath=//input[@name='Name']
${NEW_HOSPITAL_ACCOUNT_CHANNEL_OPTION_XPATH}  xpath=//lightning-base-combobox-item[@role='option' and @data-value='Hospital']
${ACCOUNT_BRICK_DROPDOWN_XPATH}  xpath=(//input[contains(@role,'combobox')])[2]
${ACCOUNT_BRICK_DROPDOWN_OPTIONS_XPATH}     xpath=//lightning-base-combobox-item[@class='slds-media slds-listbox__option slds-media_center slds-listbox__option_entity' and @role='option']
${ACCOUNT_BRICK_OPTION_XPATH}    xpath=(//lightning-base-combobox-item[@class='slds-media slds-listbox__option slds-media_center slds-listbox__option_entity' and @role='option'])[2]
${ACCOUNT_BILLING_DROPDOWN_XPATH}  xpath=(//input[normalize-space(@placeholder)='Search Address'])[1]
${ACCOUNT_BILLING_SEARCH_RESULT}  xpath=//*[contains(@data-item-id,'combobox-input-')][3]

#   Hospital Account XPath
${ACCOUNT_TAB_XPATH}     xpath=//a[@title='Accounts']
#${HOSPITAL_NAME_ID}    xpath=(//span[@class='slds-grid slds-grid_align-spread'])[2]//a
