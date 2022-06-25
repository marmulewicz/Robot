*** Settings ***
Library   SeleniumLibrary
Library    BuiltIn
Resource    ../Page_objects/Locators.robot
Resource    ../Page_objects/Variables.robot
*** Keywords ***
Open shop main page
    Open Browser    ${shopurl}     ${browser}
    Maximize Browser Window
Sign in page
    Click Element    ${sing_in_button}