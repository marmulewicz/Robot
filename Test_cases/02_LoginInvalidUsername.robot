*** Settings ***
#Library   SeleniumLibrary
#Library    BuiltIn
Resource    ../Resources/LoginPageNewUser.robot
Resource    ../Resources/RegistrationFormPage.robot
Resource    ../Resources/UserLogin.robot
Test Teardown   Close all browsers
*** Test Cases ***
Invalid user email login
    Open shop main page
    Signin page
    Enter invalid user email address
    Enter user password
    Click submit account button
    Error messages validation
Invalid user password login
    Open shop main page
    Signin page
    Enter user email address
    Enter user invalid password
    Click submit account button
    Error messages validation
Login
    Open shop main page
    Sign in page
    Enter user email address
    Enter user password
    Click submit account button
    Sign out