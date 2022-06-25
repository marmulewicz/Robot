*** Settings ***
Library  SeleniumLibrary
Resource    ../Page_objects/Locators.robot
Resource    ../Page_objects/Variables.robot

*** Keywords ***
Search
    Set Selenium Speed          0.5
    Wait Until Element Is Enabled    ${search}
    Input Text    ${search}    ${input_search}
    Wait Until Element Is Enabled    ${submit_search}
    Click Button    ${submit_search}
Select dress1
    Set Selenium Speed          0.5
    Click Element      ${dress_1}
    Wait Until Page contains Element    ${add}
    Click Element   ${add}
Select sieze1
    Set Selenium Speed          0.5
    Select From List By Value   ${size}     2
Select color1
    Set Selenium Speed          0.5
    Wait Until Element Is Enabled    ${color1}
    Click Element   ${color1}
Add to Cart1
    Set Selenium Speed          0.5
    Wait Until Element Is Enabled    ${cart}
    Click Element   ${cart}
    #Wait Until Element Is Enabled    ${continue}
    Set Focus To Element    ${continue}
    Click Element   ${continue}
    #Reload Page
    #Click Element   ${continue_shopping}
    #Click Element   ${main_page_return}
Next Search
    Wait Until Element Is Enabled    ${search}
    Input Text    ${search}    ${input_search1}
    Wait Until Element Is Enabled    ${submit_search}
    Click Button    ${submit_search}
Select dress2
    Set Selenium Speed          0.5
    Click Element      ${dress_2}
    Wait Until Page contains Element    ${add}
    Click Element   ${add}
Select sieze2
    Select From List By Value   ${size}     3
Select color2
    Wait Until Element Is Enabled    ${color2}
    Click Element   ${color2}
Add to Cart2
    Wait Until Element Is Enabled    ${cart}
    Click Element   ${cart}
    Wait Until Element Is Enabled    ${continue}
    Reload Page
    Click Element   ${main_page_return}
Locate Item
    Wait Until Element Is Visible                           ${ITEM_IMG}
    Scroll Element Into View                                ${ITEM_IMG}
Add Item To Cart
    Mouse Over                                              ${ITEM_IMG}
    Wait Until Element Is Visible                           ${ITEM_ADD_TO_CART_BTN}
    Scroll Element Into View                                ${ITEM_ADD_TO_CART_BTN}
    Click Element                                           ${ITEM_ADD_TO_CART_BTN}
Proceed To Summary
    Wait Until Element Is Visible                           ${PROCEED_TO_SUMMARY}
    Click Element                                           ${PROCEED_TO_SUMMARY}