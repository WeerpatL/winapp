*** Settings ***
Resource    ../keywords/pages/import.robot

*** Test Cases ***
Assignment 2 Winapp with SikuliLibrary
    common.Open Winforms app
    simplecontrol.input text to image textfield    textbox.png    textboxnotext.png

