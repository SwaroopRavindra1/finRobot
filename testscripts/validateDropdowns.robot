*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${appurl}       https://techedtrainings.com/
${browsername}    chrome


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser

    Maximize Browser Window


    ${count}    Get WebElements    //select[@name='menu-363']//option


FOR ${dropdowns} IN @{count}
        ${total}   Get Element Attribute ${dropdowns}    value
        Log To Console ${total}
END

    Close All Browsers