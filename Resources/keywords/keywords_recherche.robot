*** Settings ***
Documentation       This test case detected to make sure that home page is working properly

Library             Screenshot
Library             SeleniumLibrary    screenshot_root_directory=./Screenshots/SUITE1/
Resource            ../variables/variables_recherche.robot


*** Keywords ***
Acces to Jumia Home page with headless
    [Documentation]    Overture la page principle de "Jumia"
    [Arguments]    ${BASE_URL_CUSTOM}

    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    -headless
    Open Browser    ${BASE_URL_CUSTOM}    browser=firefox    options=${options}

Acces to Jumia Home page
    [Documentation]    Overture la page principle de "Jumia"
    [Arguments]    ${BASE_URL_CUSTOM}
    Open Browser    ${BASE_URL_CUSTOM}    browser=firefox
    Sleep    3s

Open Browser Navigation to home page
    [Tags]    test keyword
    Open Browser    ${BASE_URL}    ${BROWSER}

Close All Browser Navigation to home page
    [Tags]    test keyword
    Close All Browsers

Insure that the we change the location
    [Tags]    test keyword
    ${current_location}=    Get Location
    Should Not Be Equal    ${current_location}    ${BASE_URL}
