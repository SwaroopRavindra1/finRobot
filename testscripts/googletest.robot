*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${appurl}   https://www.google.com  chrome



*** Test Cases ***
TestGoogle_TC01
    open browser    https://www.google.com     chrome
    Wait Until Page Contains Element    //img[@class='lnXdpd']


    # print title of the page
    ${currentpagetitle}     get title
    Log To Console    ${currentpagetitle}
     # Validate gmail link
    Wait Until Page Contains Element    //a[text()='Gmail']
    # Validate google search button
    Wait Until Page Contains Element    (//input[@class='gNO89b'])[1]
    #Validate google search bar
    Wait Until Page Contains Element    //input[@name='q']
    Close All Browsers

*** Keywords ***


