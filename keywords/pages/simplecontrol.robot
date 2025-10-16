*** Settings ***
Resource    import.robot

*** Keywords ***
Input name to text label
    Set Text To Textbox    ${Testlabel_field}    Jui


Check the checkbox name test checkbox
    Set Checkbox State    ${Testcheckbox_checkbox}    ${True}
    ${checkboxstate}     Get Checkbox State    ${Testcheckbox_checkbox}
    Should Be Equal    ${checkboxstate}    ${True}

Select Radiobutton2
    Select Radiobutton    ${Radiobutton2}
    ${radiobutton2state}    Get Radiobutton State    ${Radiobutton2}
    Should Be Equal    ${radiobutton2state}    ${True}

move progressbar to right
    Focus    ${Slider}
    FlaUILibrary.Drag And Drop     ${sliderthumb}    ${numer}

Select item 1 from combobox
    Wait Until Element Exist    ${combobox}
    Select Combobox Item By Index    ${combobox}    0
    Combobox Should Contain    ${combobox}    Item 1
    
input text to image textfield
    [Arguments]    ${img}    ${imgnotext}
    ${imagetextfield}   Set Variable    ${CURDIR}\\..\\..\\resources\\testdata\\image\\${img}
    ${imagetextfieldnotext}   Set Variable    ${CURDIR}\\..\\..\\resources\\testdata\\image\\${imgnotext}
    SikuliLibrary.Click    ${imagetextfield}
    SikuliLibrary.Type With Modifiers   a    CTRL
    SikuliLibrary.Press special key     DELETE
    SikuliLibrary.Type With Modifiers    Jui