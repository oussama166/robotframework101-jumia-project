*** Settings ***
Documentation       This test case detected to make sure that result search page is working properly

Library             Screenshot
Library             SeleniumLibrary    screenshot_root_directory=./Screenshots/SUITE3/
Resource            ../Resources/variables/variables_recherche.robot
Resource            ../Resources/keywords/keywords_recherche.robot
