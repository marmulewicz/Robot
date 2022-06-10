*** Settings ***
Library   SeleniumLibrary
Library    BuiltIn
Resource    ../Page_objects/Locators.robot
Resource    ../Page_objects/Variables.robot
*** Keywords ***
Enter user email address
    Input Text     ${email_login}       ${login}
Enter invalid user email address
    Input Text      ${email_login}       ${invalid_user_email}
Enter user password
    Input Text      ${password_login_field}       ${password}
Enter user invalid password
    Input Text      ${password_login_field}       ${short_password}
Click submit account button
    Click Element  ${submit_login_button}
Error messages validation
    Page Should Contain Element      ${error_msg_field}
