*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${URL}  https://www.velocityfleet.com/accounts/login/
${Username Locator}  id:login-panel__email
${Username}  aymen.h@harrathi.com
${Password Locator}  id:login-panel__password
${Password}  @Harrathi2022
${Login Button Locator}  xpath://*[@id="login-panel__form"]/button
        
*** Test Cases ***
Test Open Browser
    Open Browser Vilocity  
    Wait Until Element Is Enabled    id=login-panel__form

Login
    Login Portal    
    
    
*** Keywords ***
Open Browser Vilocity
    Open Browser    ${URL}    ${Browser}
    Sleep    2
    Click Element    id=CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
Login Portal
    Input text    ${Username Locator}    ${Username}
    Sleep    3
    Input Text    ${Password Locator}    ${Password} 
    Sleep    3
    Click Element   ${Login Button Locator}   
    Sleep    10
    Close Browser         