*** Settings ***
Library   SeleniumLibrary
Library    BuiltIn
Resource    ../Resources/UserLogin.robot
Resource    ../Resources/BuyItem.robot
Resource    ../Resources/Paying.robot
Resource    ../Resources/LoginPageNewUser.robot

*** Test Cases ***
Add dress
        Open shop main page
        Sign in page
        Enter user email address
        Enter user password
        Click submit account button
        Return main page
        Locate Item
        Add Item To Cart
        Proceed To Summary
        Pay





#Add items 1 to cart
 #
  #  Select dress1
   # Select sieze1
    #Select color1
    #Add to Cart1
#Add items 2 to cart
 #   Select dress2
   # Select sieze2
    #Select color2
    #Add to Cart2
