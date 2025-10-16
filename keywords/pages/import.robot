*** Settings ***
Library    FlaUILibrary
Library    SikuliLibrary

Resource    ../locators/complex_locator.robot
Resource    ../locators/simple_locator.robot

Resource    ../pages/common.robot
Resource    ../pages/simplecontrol.robot
Resource    ../pages/complexcontrol.robot

Variables   ../../resources/settings/setting.yaml