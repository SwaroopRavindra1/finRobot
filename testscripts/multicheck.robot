*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${appurl}       https://codepen.io/RobotsPlay/pres/pyNLdL
${browsername}    chrome
${expectedtitle}    Google


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser

    Maximize Browser Window

    #Validate Dropdown
    Select Frame    result
    Click Element   //label[@class='dropdown-label']

    # Select first 3 checkbox
    Checkbox Should not be Selected    //input[@value='Selection 1']
    Select Checkbox    //input[@value='Selection 1']
    Checkbox Should not be Selected    //input[@value='Selection 2']
    Select Checkbox    //input[@value='Selection 2']
    Checkbox Should not be Selected    //input[@value='Selection 3']
    Select Checkbox     //input[@value='Selection 3']

    # Uncheck last 2 selected checkbox

    Unselect Checkbox   //input[@value='Selection 3']
    Unselect Checkbox   //input[@value='Selection 2']

    Close All Browsers



