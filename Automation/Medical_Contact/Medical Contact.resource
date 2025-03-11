*** Settings ***
Library     SeleniumLibrary
Resource    ../Brick/Brick Account.resource

*** Variables ***
# Create Medical Contact XPath
${NEW_MEDICAL_CONTACT_PAGE}     New Contact
${MEDICAL_RADIO_OPTION_XPATH}     xpath=(//span[contains(@class,'slds-radio--faux')])[3]
${MEDICAL_CONTACT_PAGE}     Contact
${SALUTATION_MEDICAL_DROPDOWN}     xpath=//button[@aria-label='Salutation']
${SALUTATION_MEDICAL_OPTION}    xpath=//span[@class='slds-media__body'][contains(.,'Ms.')]
${NEW_MEDICAL_FIRST_NAME_XPATH}     xpath=//input[@name='firstName']
${NEW_MEDICAL_FIRST_NAME}       Medical
${NEW_MEDICAL_LAST_NAME_XPATH}     xpath=//input[@name='lastName']
${NEW_MEDICAL_LAST_NAME}       Contact
${NEW_MEDICAL_EXTERNAL_ID_XPATH}    xpath=//input[@name='Contact_External_Id__c']
${NEW_MEDICAL_EXTERNAL_ID}      Medical_Contact
${CONTACT_PRIORITY_DROPDOWN_XPATH}    xpath=//button[@aria-label='Priority']
${CONTACT_PRIORITY_OPTION_XPATH}    xpath=//lightning-base-combobox-item[@role='option' and @data-value='B']
${CONTACT_SPECIALTY_DROPDOWN_XPATH}     xpath=//button[@aria-label='Specialty']
${CONTACT_SPECIALTY_OPTION_XPATH}     xpath=//lightning-base-combobox-item[@role='option' and @data-value='Gastroenterology']
${NEW_MEDICAL_PERSON_TYPE_DROPDOWN_XPATH}     xpath=//button[@aria-label='Person Type']
${NEW_MEDICAL_PERSON_TYPE_OPTION_XPATH}     xpath=//lightning-base-combobox-item[@role='option' and @data-value='Doctor']
${NEW_MEDICAL_ACCOUNT_DROPDOWN_XPATH}  xpath=//input[@placeholder='Search Accounts...']
${NEW_MEDICAL_ACCOUNT_DROPDOWN_OPTIONS_XPATH}     xpath=//lightning-base-combobox-item[@class='slds-media slds-listbox__option slds-media_center slds-listbox__option_entity' and @role='option']
${NEW_MEDICAL_ACCOUNT_OPTION_XPATH}     xpath=(//lightning-base-combobox-item[@class='slds-media slds-listbox__option slds-media_center slds-listbox__option_entity' and @role='option'])[2]
${CONTACT_ACCOUNT_NAME}     Test Hospital
${NEW_MEDICAL_GENDER_DROPDOWN_XPATH}     xpath=//button[@aria-label='Gender']
${NEW_MEDICAL_GENDER_OPTION_XPATH}     xpath=//lightning-base-combobox-item[@data-value='Female']
${NEW_MEDICAL_EMAIL_XPATH}  xpath=//input[@name='Email']
${NEW_MEDICAL_EMAIL}    medical@test.com
${NEW_MEDICAL_MOBILE_PHONE_XPATH}  xpath=//input[@name='MobilePhone']
${NEW_MEDICAL_MOBILE_PHONE}    1234567890
${NEW_MEDICAL_PHONE_XPATH}  xpath=//input[@name='Phone']
${NEW_MEDICAL_PHONE}    1234567890
${NEW_MEDICAL_SHIPPING_ADDRESS_DROPDOWN_XPATH}  xpath=(//input[normalize-space(@placeholder)='Search Address'])[1]
${NEW_MEDICAL_SHIPPING_ADDRESS_SEARCH_TEXT}   Soldotna, Alaska 99669, USA
${NEW_MEDICAL_SHIPPING_ADDRESS_SEARCH_RESULT}  xpath=//*[contains(@data-item-id,'combobox-input-')][3]
${NEW_MEDICAL_EMAIL_OPTIN_XPATH}  xpath=//input[@name='hasEmailOptIn__c']

# Search Contact XPath

${ENTER_CONTACT_TEXT}   Contacts
${RESULT_CONTACT_TEXT}     xpath=//p[contains(.,'Contacts')]
${CONTACT_PAGE_HEADING}     xpath=//h1[@class='slds-var-p-right_x-small'][contains(.,'Contacts')]
${FILTER_CONTACT_XPATH}     xpath=//button[@title='Select a List View: Contacts']
${SELECT_ALL_US_CONTACT_XPATH}     xpath=//span[@title='US - All Contacts']
${SEARCH_CONTACT_XPATH}    xpath=//input[@placeholder='Search this list...']
 # Replace with the actual locator of the "medical contact name" element
