*** Settings ***
Resource    ../keywords/pages/import.robot
Resource    ../keywords/pages/common.robot
Library    OperatingSystem
Suite Teardown    Close Winforms app
*** Test Cases ***
Assignment 1 Winapp
    common.Open Winforms app
    simplecontrol.Input name to text label
    simplecontrol.Check the checkbox name test checkbox
    simplecontrol.Select Radiobutton2
    common.Click Button    ${Slider}
    simplecontrol.move progressbar to right
    common.Click Button    ${combobox}
    simplecontrol.Select item 1 from combobox
    common.Click image from Arguments     calendar.png
    common.check if screen contain image    calendar2.png
    common.Wait until element is exist then double Click    ${Complexcontrolstab}   
    common.Wait until element is exist then double Click    ${Treeitemlv1}
    common.verify that element should exist    ${Treeitemlv2a}
    complexcontrol.Get first row data
    