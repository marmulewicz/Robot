*** Settings ***
Library   SeleniumLibrary
Library    BuiltIn
Resource    ../Resources/UserLogin.robot
Resource    ../Resources/BuyItem.robot
Resource    ../Resources/Paying.robot
Resource    ../Resources/LoginPageNewUser.robot

*** Test Cases ***
Add items to cart
    Open shop main page
    Add to Cart
    Add next to Cart
