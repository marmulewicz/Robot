*** Settings ***
Library   SeleniumLibrary
Library    BuiltIn
Resource    ../Page_objects/Locators.robot
Resource    ../Page_objects/Variables.robot
*** Keywords ***
Enter your personal information
    Wait Until Element Is Visible   ${mr_button}
    Click Button   ${mr_button}
    Input Text     ${first_name_field}       ${first_name}
    Input Text     ${last_name_field}       ${last_name}
    Input Text     ${password_field}       ${short_password}
    Select From List By Value       ${days_field}       ${bday_days}
    Select From List By Value       ${months_field}     ${bday_month}
    Select From List By Value       ${years_field}      ${bday_yeary}
Enter address information
    Input Text      ${addres_field}     ${addres}
    Input Text      ${city_field}       ${city}
    Select From List By Value       ${state_field}      ${state}
    Input Text      ${postcode_field}       ${postcode}
Enter mobile phone
    Input Text      ${mobile_field}     ${mobile}
Email address validation
    Element Should Contain  ${email_form_field}      ${new_user_email}
Submit registration form
    Click Element      ${submit_button}
    sleep   5s