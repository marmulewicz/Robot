*** Settings ***
Resource    ../Resources/MainPage.robot
Resource    ../Resources/LoginPage.robot
Resource    ../Resources/RegistrationFormPage.robot
Test Teardown   Close all browsers
*** Test Cases ***
Registration new user
    Open shop main page
    Signin page
    Enter a new email address
    Enter your personal information
    Enter address information
    Enter mobile phone
    Submit registration form
