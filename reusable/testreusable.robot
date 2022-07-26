*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${appurl}       https://the-internet.herokuapp.com/javascript_alerts
${browsername}    chrome
${expectedtitle}    Google


*** Keywords ***

LaunchMyWebsite

    Open Browser    ${appurl}    ${browsername}

# Maximize browser

    Maximize Browser Window

CloseMyWebsite

    Close All Browsers
