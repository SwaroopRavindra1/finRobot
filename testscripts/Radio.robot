*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${appurl}   https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/radio
${browsername}  chrome
${expectedTitle}    Google

*** Test Cases ***
TC_001

    Open Browser    ${appurl}  ${browsername}

# Maximize browser

    Maximize Browser Window

    Sleep    5

    # Radio button validation

    Select Frame        interactive is-tabbed-standard-height
    Unselect Frame      interactive is-tabbed-standard-height

    Close All Browsers

*** Keywords ***

