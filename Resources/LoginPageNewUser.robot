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
Enter a new email address
    Input Text      ${new_email_field}      ${new_user_email}
    Click Element   ${submit_create_button}
Return main page
    Click Element   ${main_return}



