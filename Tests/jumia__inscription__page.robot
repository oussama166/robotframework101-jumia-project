*** Settings ***
Documentation       This suite responsible to insure that the Register page works properly

Library             Screenshot
Library             SeleniumLibrary    screenshot_root_directory=/Screenshots/SUITE2/
Resource            ../Resources/library/General__Library.robot
Resource            ../Resources/variables/variables_recherche.robot
Resource            ../Resources/variables/variables_inscription.robot
Resource            ../Resources/keywords/keywords_recherche.robot

Suite Setup         Acces to Jumia Home page    BASE_URL_CUSTOM=https://my.jumia.ma/interaction/1ybCGZ0RRXQxpRQgHHamo/fr-ma/identification
Suite Teardown      Close All Browser Navigation to home page


*** Test Cases ***
⁡⁢⁣⁢# //ANCHOR - The Transition from home page to connection page is detected by cloudflare⁡
# Test Load Connection Page by the connection button
    # Given    I am on the home page of "jumia"
    # When    I click on the "se connecter" button
    # Then    I need to redirect to the connection page
    [Documentation]    Charger la page de connection quand je click sur le button connecter
    [Tags]    suite2-test1(ignore)

    Click Button    locator=${CLOSE_BUTTON_IN_POPUP}
    Click Element    locator=//label[@for="dpdw-login"]
    Click Link    locator=${SE_CONNECTER_BUTTON}
    Sleep    time_=5s
    # Capture Page Screenshot    filename=Connection.png

Test Load Connection using direct link
    [Documentation]    Charger la page de connection a traver le lien direct du jumia connect
    [Tags]    suite2-test2
    Capture Page Screenshot    filename=connectionPage.png
