*** Variables ***
${BASE_URL}                 https://www.jumia.fr/
${INPUT_USER}               //input[@name="keywords_recherche"][contains(.,"user")]
${BROWSER}                  chrome
${HEADLESS}                 false
${CLOSE_BUTTON_IN_POPUP}    //*[@id="pop"]/div/section/button
${INPUT_SEARCH_PRODUCT}     //input[@name="q"]
${BUTTON_SEARCH_PRODUCT}    //form[@id="search"]/button[contains(.,"Rechercher")]
