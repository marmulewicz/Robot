*** Settings ***
Library   SeleniumLibrary
Library    BuiltIn
Resource    ../Page_objects/Locators.robot
Resource    ../Page_objects/Variables.robot

*** Keywords ***
Enter a new email address
    Set Selenium Speed          0.3
    Input Text      ${new_email_field}      ${new_user_email}
    Click Element   ${submit_create_button}
Return main page
    Set Selenium Speed          0.3
    Click Element   ${main_return}
Sign out
    Set Selenium Speed          0.3
    Click Element   ${sign_out}
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


