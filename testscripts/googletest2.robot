*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${appurl}   https://www.google.com
${browsername}   chrome
${expectedtitle}    Google

*** Test Cases ***
TestGoogle2_TC01
    Open Browser    ${appurl}    ${browsername}
    #Maximize broswer window

    Maximize Browser Window

    #Validate gmail link

    Page Should Contain Element     //img[@class='lnXdpd']


    validatepagetitle
    validategooglelogo
    validategoogleserachbutton
    validategooglesearchbar
    Close All Browsers

*** Keywords ***

validategooglelogo
    Page Should Contain Element   (//a[text()='Sign in'])[1]


TestGoogle2_TC02
    Open Browser    ${appurl}    ${browsername}
    #Maximize broswer window

    Maximize Browser Window

    #Validate gmail link

    Page Should Contain Element     //a[text()='Sign in']
    validatepagetitle
    Close All Browsers

*** Keywords ***

validatepagetitle
    ${runtimepagetitle}     Get Title
    Log To Console     ${runtimepagetitle}
    Should Be True    """${expectedtitle}""" == """${runtimepagetitle}"""


validategoogleserachbutton
    Page Should Contain Element    (//input[@class='gNO89b'])[1]
validategooglesearchbar
    Page Should Contain Element    q



