*** Settings ***
Library  SeleniumLibrary
Resource    ../Page_objects/Locators.robot
Resource    ../Page_objects/Variables.robot
*** Keywords ***
Pay
    Wait Until Element Is Enabled    ${buy}
    Click Element   ${buy}
    Wait Until Element Is Enabled    ${processAddress}
    Click Element   ${processAddress}
    Wait Until Element Is Enabled    ${checkbox}
    Click Element   ${checkbox}
    Wait Until Element Is Enabled    ${processCarrier}
    Click Element   ${processCarrier}
    Wait Until Element Is Enabled    ${pay}
    Click Element   ${pay}
    Wait Until Element Is Enabled    ${confirm}
    Click Element   ${confirm}
Validation order confirmation
    Page Should Contain Element     ${order_confirmation}