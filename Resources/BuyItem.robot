*** Settings ***
Library  SeleniumLibrary
Resource    ../Page_objects/Locators.robot
Resource    ../Page_objects/Variables.robot

*** Keywords ***
Search
    Set Selenium Speed          0.3
    Wait Until Element Is Enabled    ${search}
    Input Text    ${search}    ${input_search}
    Wait Until Element Is Enabled    ${submit_search}
    Click Button    ${submit_search}
Add to Cart
    Set Selenium Speed          0.5
    Click Element      ${dress_1}
    Wait Until Page contains Element    ${add}
    Click Element   ${add}
    Select From List By Value   ${size}     2
    Wait Until Element Is Enabled    ${color1}
    Click Element   ${color1}
    Wait Until Element Is Enabled    ${cart}
    Click Element   ${cart}
    Wait Until Element Is Enabled    ${continue}
    Click Element   ${continue_shopping} 
    Click Element   ${main_page_return}
Next Search
    Wait Until Element Is Enabled    ${search}
    Input Text    ${search}    ${input_search1}
    Wait Until Element Is Enabled    ${submit_search}
    Click Button    ${submit_search}
Add next to Cart
    Set Selenium Speed          0.5
    Click Element      ${dress_2}
    Wait Until Page contains Element    ${add}
    Click Element   ${add}
    Select From List By Value   ${size}     3
    Wait Until Element Is Enabled    ${color2}
    Click Element   ${color2}
    Wait Until Element Is Enabled    ${cart}
    Click Element   ${cart}
    Wait Until Element Is Enabled    ${continue}
    Reload Page
    Click Element   ${main_page_return}
