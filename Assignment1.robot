*** Settings ***
Resource    ../keywords/pages/import.robot
Resource    ../keywords/pages/common.robot
Library    OperatingSystem
Suite Setup    Open Winforms app
Suite Teardown    Close Winforms app
*** Test Cases ***
Assignment 1 Winapp
    Input name to text label
    Check the checkbox name test checkbox
    Select Radiobutton2
    # Click Button    ${Slider}
    # move progressbar to left
    Click Button    ${combobox}
    Select item 1 from combobox
    # Click image  calender.png
    common.Switch tab to Complex control   
    common.Double Click    ${Treeitemlv1}
    common.verify that tree is expand
    complexcontrol.Get first row data
    