*** Settings ***
Library   SeleniumLibrary
Library    BuiltIn
Resource    ../Resources/UserLogin.robot
Resource    ../Resources/BuyItem.robot
Resource    ../Resources/Paying.robot
Resource    ../Resources/LoginPageNewUser.robot

*** Test Cases ***
Add items 1 to cart
    Open shop main page
    Select sieze1
    Select color1
    Add to Cart1
Add items 2 to cart
    Select dress2
    Select sieze2
    Select color2
    Add to Cart2
