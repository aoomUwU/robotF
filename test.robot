*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser    http://automationexercise.com   chrome


*** Variables ***

${search_product}   Dress


${name}    aaa
${email}    uuu@gmail.com

*** Keywords ***

Checked Products Button
    Click Element     //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a

Input search_product
    [Arguments]    ${search_product}
    Input Text    //*[@id="search_product"]    ${search_product}

Checked Search Button
    Click Element     //*[@id="submit_search"]

Checked Addcart Button
    Click Element     /html/body/section[2]/div[1]/div/div[2]/div/div[2]/div/div[1]/div[2]/div/a

Checked Cart Button
    Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[3]/a

Checked SL Button 
    Click Element   //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    #Signup / Login


Input name
    [Arguments]    ${name}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[2]    ${name}
Input Email
    [Arguments]    ${email}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[3]    ${email}

Checked sub Button
    Click Element    //*[@id="form"]/div/div/div[3]/div/form/button

*** Test Cases ***

Search Products Verify Cart After Login
    Checked Products Button
    #Page Should Contain Element    /html/body/section[2]/div[1]/div/div[2]/div/h2
    
    Input search_product    ${search_product}
    Checked Search Button
    #Page Should Contain Element    /html/body/section[2]/div[1]/div/div[2]/div/h2
    #Page Should Contain Element

    #Checked Addcart Button
    Checked Cart Button
    #Page Should Contain Element

    Checked SL Button
    Input name    ${name}
    Input Email    ${email}
    Checked sub Button



 
