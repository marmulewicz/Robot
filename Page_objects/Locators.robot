*** Settings ***
Library   SeleniumLibrary
Library    BuiltIn

*** Variables ***
#shop url
${shopurl}  http://automationpractice.com/index.php
${main_return}  //img[@class='logo img-responsive']
#main locators
${sign_in_button}  class:login
#login page locators
${new_email_field}  id:email_create
${submit_create_button}  id:SubmitCreate
${email_login}      id:email
${password_login_field}       id:passwd
${submit_login_button}      id:SubmitLogin
${error_msg_field}          //body[@id='authentication']/div[@id='page']/div[@class='columns-container']/div[@id='columns']/div[@class='row']/div[@id='center_column']/div[1]
${sign_out}     //a[@class='logout']
#registration page locators
${sing_in_button}  class:login
${email_form_field}      id:email
${mr_button}    id:id_gender1
${addres_field}     id:address1
${city_field}       id:city
${state_field}       id_state
${postcode_field}      id:postcode
${mobile_field}        id:phone_mobile
${first_name_field}    id:customer_firstname
${last_name_field}      id:customer_lastname
${password_field}       id:passwd
${submit_button}       id:submitAccount
${days_field}       id:days
${months_field}     id:months
${years_field}      id:years
#shoping page locators
${search}  id:search_query_top
${submit_search}  name:submit_search
${add}  //span[contains(text(),'Add to cart')]
${dress_1}      //li[@class='ajax_block_product col-xs-12 col-sm-4 col-md-3 last-line first-item-of-tablet-line first-item-of-mobile-line last-mobile-line']//div[@class='product-container']//div[@class='right-block']//h5[@itemprop='name']//a[@class='product-name'][contains(text(),'Printed Chiffon Dress')]
${dress_2}       //li[@class='ajax_block_product col-xs-12 col-sm-4 col-md-3 first-in-line last-line first-item-of-mobile-line hovered']//div[@class='product-container']//div[@class='left-block']//div[@class='product-image-container']//a[@class='quick-view']//span[contains(text(),'Quick view')]
${main_page_return}     //img[@class='logo img-responsive']
${continue_shopping}    //body[@id='product']/div[@id='page']/div[@class='header-container']/header[@id='header']/div/div[@class='container']/div[@class='row']/div[@id='layer_cart']/div[@class='clearfix']/div[@class='layer_cart_cart col-xs-12 col-md-6']/div[@class='button-container']/span[@class='continue btn btn-default button exclusive-medium']/span[1]
${size}  id:group_1
${color1}  id:color_16
${color2}  id:color_11
${cart}  name:Submit
${continue}  xpath://body[1]/div[1]/div[1]/header[1]/div[3]/div[1]/div[1]/div[4]/div[1]/div[2]/div[4]/span[1]/span[1]
${checkout}  xpath://body[1]/div[1]/div[1]/header[1]/div[3]/div[1]/div[1]/div[4]/div[1]/div[2]/div[4]/a[1]/span[1]
${buy}  xpath://body[1]/div[1]/div[2]/div[1]/div[3]/div[1]/p[2]/a[1]/span[1]
${processAddress}  name:processAddress
${checkbox}  id:cgv
${processCarrier}  name:processCarrier
${pay}  class:bankwire
${confirm}  xpath://body/div[@id='page']/div[2]/div[1]/div[3]/div[1]/form[1]/p[1]/button[1]
${ITEM_IMG}                                 //*[@id="homefeatured"]/li[1]/div/div[1]/div/a[1]/img
${ITEM_ADD_TO_CART_BTN}                     //*[@id="homefeatured"]/li[1]/div/div[2]/div[2]/a[1]/span
${PROCEED_TO_SUMMARY}                       //span[contains(text(),'Proceed to checkout')]
