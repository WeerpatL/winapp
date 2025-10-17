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
    ${image}   Set Variable    ${CURDIR}/../../resources/testdata/image/${img}
    SikuLiLibrary.Wait Until Screen Contain    ${image}    5
    SikuliLibrary.Click    ${image}

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

get image coordinate
    [Arguments]    ${img}
    ${image}    Set Variable   ${CURDIR}/../../resources/testdata/image/${img}  
    ${Path}    Normalize Path     ${image}
    ${get_cor}    Get Image Coordinates    ${Path}