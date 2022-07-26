*** Settings ***
Library     SeleniumLibrary
Library     ../reusable/reusable.py
Suite Setup     readXML


*** Variables ***

${appurl}       https://techedtrainings.com/
${browser}      chrome


*** Test Cases ***
TC_001


    Open Browser    ${appurl}    ${browser}
    Maximize Browser Window
    Close All Browsers


*** Keywords ***

readXML
    ${url}  reusable.readXMLAsPerNode      applicationURL
    Set Global Variable    ${url}
    Log To Console    ${url}

     ${path}  reusable.readXMLAsPerNode      chromepath
    Set Global Variable    ${path}
    Log To Console    ${path}

