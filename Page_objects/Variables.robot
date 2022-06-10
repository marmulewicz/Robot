*** Settings ***
Library   SeleniumLibrary
Library    BuiltIn

*** Variables ***
${browser}         Chrome
#Log in
${login}  wsb@onet.pl
${new_user_email}   test1@o2.pl
${invalid_user_email}   test11@o2.pl
${error_text}       Authentication failed
#Registration
${first_name}   WSB
${last_name}    Student
${short_password}       test
${password}         wsbstudent
${addres}       586 Turnpike Rd New
${city}     New Ipswich
${state}    29
${postcode}     03071
${mobile}      555123456
${bday_days}       10
${bday_month}     5
${bday_yeary}      2005
${input_search}  dress
${input_search1}  blouse
${order_confirmation}    Your order on My Store is complete