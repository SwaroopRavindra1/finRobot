*** Settings ***
Library     SeleniumLibrary
Resource    ../reusable/testreusable.robot
Variables   ../reusable/pom.py
Test Setup      LaunchMyWebsite
Test Teardown   CloseMyWebsite


*** Variables ***

*** Test Cases ***
Click on js alert

  #Validate the popup text and click on Ok Button
  
   Click Button     ${clickForjavascripts}
   Sleep    1
   ${popup_text}    Handle Alert
   Log To Console    ${popup_text}


  #Validate the confirmation

  Element Text Should Be    //p[@id='result']    You successfully clicked an alert
  Sleep    1
  #Close All Browsers


Click on js confirm

#Validate the popup text and click on Ok Button

   Click Button    //button[text()='Click for JS Confirm']
   Sleep    1


   # Click on cancel button first and do the validation

     ${popup_text}    Handle Alert  action=DISMISS
     Log To Console    ${popup_text}

  #Validate the confirmation

  Element Text Should Be    //p[@id='result']    You clicked: Cancel
  Sleep    1


   # Click on Ok button first and do the validation
   Click Button    //button[text()='Click for JS Confirm']
   Sleep    1

     ${popup_text}    Handle Alert  action=ACCEPT
     Log To Console    ${popup_text}

  #Validate the confirmation

  Element Text Should Be    //p[@id='result']    You clicked: Ok
  Sleep    1



Click on js Prompt

#Validate the popup text and click on Ok Button

   Click Button    //button[text()='Click for JS Prompt']
   Sleep    3


   # Click on cancel button first and do the validation

     ${popup_text}    Handle Alert  action=DISMISS
     Log To Console    ${popup_text}

  #Validate the confirmation

  Element Text Should Be    //p[@id='result']    You entered: null
  Click Button    //button[text()='Click for JS Prompt']
  Sleep    1
  Input Text Into Alert    Swaroop  action=ACCEPT
  Element Text Should Be    //p[@id='result']    You entered: Swaroop


*** Keywords ***
