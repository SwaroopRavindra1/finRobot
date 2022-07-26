*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${appurl}       https://testautomationpractice.blogspot.com/
${browsername}    headlesschrome


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser

    Maximize Browser Window

    # Validate HTML table

    # How to get element counts

    ${countrow}    Get Element Count    //table[@name='BookTable']/tbody/tr

    Log To Console   Table row count is: ${countrow}

    ${countcol}    Get Element Count   //table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    Table col count is:${countcol}


    # Print the column header names

    ${headername1}   Get Text    //table[@name='BookTable']/tbody/tr[1]/th[1]

    ${headername2}   Get Text    //table[@name='BookTable']/tbody/tr[1]/th[2]

    ${headername3}   Get Text    //table[@name='BookTable']/tbody/tr[1]/th[3]

    ${headername4}   Get Text    //table[@name='BookTable']/tbody/tr[1]/th[4]

    Log To Console  Columns heders name: ${headername1} ${headername2} ${headername3} ${headername4}

    #print the table column

    ${countcol}     Get WebElements   //table[@name='BookTable']/tbody/tr[1]/th

FOR     ${apple}    IN @{countcol}
        ${headerName} Get Text ${apple}
        Log To Console ${headerName}
END



# Count Total Number Of Links ....

${countcol}     Get WebElements         //a

FOR     ${apple} IN @{countcol}
        ${headerName} Get Text ${apple}
     Log To Console ${headerName}

END

#How to print first column details

${countcol}     Get WebElements     //table[@name='BookTable']/tbody/tr/td[1]

FOR     ${apple}       IN @{countcol}
        ${headerName} Get Text ${apple}
        Log To Console ${headerName}
END

    # How to check 3000 in table
    Table Column Should Contain    BookTable    4    3000

    # How to check Master In Selenium on 5th row

    Table Row Should Contain    BookTable    5    Master In Selenium

    # How to Validate table header?
    
    Table Header Should Contain    BookTable    Author

    Table Cell Should Contain    BookTable    7    3    Javascript


    Close All Browsers





