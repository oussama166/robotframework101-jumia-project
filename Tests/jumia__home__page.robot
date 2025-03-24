*** Settings ***
Documentation       This test case detected to make sure that home page is working properly

Library             Screenshot
Library             SeleniumLibrary    screenshot_root_directory=./Screenshots/SUITE1/
Resource            ../Resources/variables/variables_recherche.robot
Resource            ../Resources/keywords/keywords_recherche.robot

Suite Setup         Acces to Jumia Home page    BASE_URL_CUSTOM=${BASE_URL}
Suite Teardown      Close All Browser Navigation to home page


*** Test Cases ***
Test Home Page Load
    [Documentation]    test si la page d'acceuil se charge a travers le bon lien
    [Tags]    suite1-test1
    Capture Page Screenshot    filename=browser.png

Test Close The Main popup window in home page
    [Documentation]    Fermer le popup qui apare dans la page du home
    [Tags]    suite1-test2
    Close Popup
    Capture Page Screenshot    filename=popupDown.png

Test Search a Product
    [Documentation]    Chercher a traver la zone de recherche sur un produit
    [Tags]    suite1-test3
    Input Text    locator=${INPUT_SEARCH_PRODUCT}    text=parfun    clear=True
    Click Button    locator=${BUTTON_SEARCH_PRODUCT}
    Sleep    time_=5s
    Capture Page Screenshot    filename=searchResult.png
    Insure that the we change the location

Test Open Ipad Section Via Menu SECTION
    [Documentation]    Ouvrir la section Ipad a traver le menu
    [Tags]    suite1-test4
    Go To    https://www.jumia.ma/telephone-tablette/
    Close Popup
    Mouse Over    locator=${MENU_SECTION}
    Mouse Over    locator=${DROPDOWN_MENU_SECTION_PHONE}
    Wait Until Element Contains    locator=${IPAD_SECTION}    text=iPad    timeout=10s
    Click Element    locator=${IPAD_SECTION}
    Sleep    time_=5s
    Capture Page Screenshot    filename=ipadSection.png
