*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${appurl}   https://techedtrainings.com/
${browsername}   chrome
#${phone}    (//div[@class='stm-iconbox'])[2]

*** Test Cases ***
TestGoogle2_TC01
    Open Browser    ${appurl}    ${browsername}

    #Maximize broswer window

    Maximize Browser Window

    validatephonenumber
    valiadeteitcorp





*** Keywords ***

validatephonenumber
    ${phone}    Get Text     (//div[@class='stm-iconbox'])[2]
    Should Start With   ${phone}    +91
     Log To Console  ${phone}
    
valiadeteitcorp
    ${text}     Get Title
    Log To Console      ${text}


    Scroll to

    Close All Browsers
