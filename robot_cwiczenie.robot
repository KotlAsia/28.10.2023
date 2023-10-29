*** Settings ***
Library       SeleniumLibrary

*** Variables ***

*** Keywords ***
Open My Browser
    Open Browser      https://gotujmy.pl/forum/      Chrome
    Maximize Browser Window
    Sleep      3
    Scroll Element Into View        //*[@id="qc-cmp2-ui"]/div[2]/div/button[2]
    Run Keyword And Ignore Error      click button      //*[@id="qc-cmp2-ui"]/div[2]/div/button[2]


*** Test Cases ***
Registration
    Open My Browser
    sleep      1
    Click Element      //*[@id="navTop"]/nav/ul[1]/li[2]/a
    sleep      1
    Click Element      //*[@id="navTop"]/nav/ul[1]/li[1]/a
    input text      //*[@id="f_cmu_email"]      ${name}
    input text      //*[@id="f_cmu_email2"]     ${name}
    input text      //*[@id="f_cmu_password"]      ${password}
    input text      //*[@id="f_cmu_password2"]      ${password}
    Checkbox Should Not Be Selected

