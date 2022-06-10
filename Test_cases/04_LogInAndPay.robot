*** Settings ***
Library   SeleniumLibrary
Library    BuiltIn
Resource    ../Resources/LoginPageNewUser.robot
Resource    ../Resources/RegistrationFormPage.robot
Resource    ../Resources/LoginPageNewUser.robot
Test Teardown   Close all browsers
*** Test Cases ***
Login
    Open shop main page
    Sign in page
    Enter user email address
    Enter user password
    Click submit account button
    Pay