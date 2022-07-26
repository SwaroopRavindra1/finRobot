*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${appurl}       https://www.docker.com
${browsername}    chrome


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser

    Maximize Browser Window
    
    Set Browser Implicit Wait    4

   Mouse Over    (//a[text()='Products'])[1]
    
    Sleep    1

    Mouse Over    (//a[text()='Developers'])[1]

    Sleep    1

    Mouse Over    (//a[text()='About Us'])[1]

    #Scroll down

    Scroll Element Into View   //img[@width='1392']
    
    Sleep    5

    Wait Until Page Contains Element    //div[@id='ValidMsgEmail']
    
    Input Text    //div[@id='ValidMsgEmail']    swaroopa947@gmail.com

    Click Button    //button[@type='submit']

    Sleep    1
    

    Close All Browsers
    