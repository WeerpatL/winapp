*** Settings ***
Resource    import.robot

*** Keywords ***
Open Winforms app
    Launch Application    ${apppath}

Close Winforms app
    SikuLiLibrary.Close Application     ${apppath}
Click Button
    [Arguments]    ${button}
    FlaUILibrary.Click    ${button}
    
Click image
    [Arguments]    ${img}
    SikuLiLibrary.Wait Until Screen Contain    ${img}    5
    SikuliLibrary.Click    ${img}

Switch tab to Complex control
    # [Arguments]    ${tab}
    Wait Until Element Exist    ${Complexcontrolstab}
    FlaUILibrary.Click    ${Complexcontrolstab}
    Wait Until Element Exist    ${complextabpage}
Double Click  
    [Arguments]    ${button}
    FlaUILibrary.Wait Until Element Exist    ${button} 
    FlaUILibrary.Double Click    ${button}

verify that tree is expand
    FlaUILibrary.Element Should Exist    ${Treeitemlv2a}