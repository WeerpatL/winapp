*** Settings ***
Resource    import.robot
Library    OperatingSystem

*** Keywords ***
Open Winforms app
    FlaUILibrary.Launch Application   ${apppath}

Close Winforms app
    SikuLiLibrary.Close Application     ${apppath}
Click Button
    [Arguments]    ${button}
    FlaUILibrary.Click    ${button}
    
Click image from Arguments
    [Arguments]    ${img}
    ${image}   Set Variable    ${CURDIR}\\..\\..\\resources\\testdata\\image\\${img}
    SikuLiLibrary.Wait Until Screen Contain    ${image}    5
    SikuliLibrary.Double Click    ${image}

check if screen contain image
    [Arguments]    ${img}
    ${image}   Set Variable    ${CURDIR}\\..\\..\\resources\\testdata\\image\\${img}
    SikuLiLibrary.Wait Until Screen Contain    ${image}    5

Wait until element is exist then double Click
    [Arguments]    ${button}
    FlaUILibrary.Wait Until Element Exist    ${button} 
    FlaUILibrary.Double Click    ${button}

verify that element should exist
    [Arguments]    ${element}
    FlaUILibrary.Element Should Exist    ${element}
