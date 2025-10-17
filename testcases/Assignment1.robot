*** Settings ***
Resource    ../keywords/pages/import.robot
Resource    ../keywords/pages/common.robot
Library    OperatingSystem
Suite Teardown    Close Winforms app
*** Test Cases ***
Assignment 1 Winapp
    Open Winforms app
    Input name to text label
    Check the checkbox name test checkbox
    Select Radiobutton2
    Click Button    ${Slider}
    move progressbar to left
    Click Button    ${combobox}
    Select item 1 from combobox
    # Capture Screen     
    get image coordinate     fullscreen.png
    Click image from Arguments     calendar.png
    FlaUIlibrary.Double Click    ${Complexcontrolstab}   
    common.Double Click    ${Treeitemlv1}
    common.verify that tree is expand
    complexcontrol.Get first row data
    