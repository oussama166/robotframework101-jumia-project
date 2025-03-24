*** Variables ***
${BASE_URL}                         https://www.jumia.ma/
${INPUT_USER}                       //input[@name="keywords_recherche"][contains(.,"user")]
${BROWSER}                          chrome
${HEADLESS}                         false
${CLOSE_BUTTON_IN_POPUP}            //*[@id="pop"]/div/section/button
${INPUT_SEARCH_PRODUCT}             //input[@name="q"]
${BUTTON_SEARCH_PRODUCT}            //form[@id="search"]/button[contains(.,"Rechercher")]
${MENU_SECTION}                     //*[@id="jm"]/header/section/div[1]/div
${DROPDOWN_MENU_SECTION_PHONE}      //*[@id="dpdw-flyout-box"]/div/div/a[1]
${IPAD_SECTION}                     //a[@role="menuitem"][@class="s-itm"][contains(.,"iPad")]
${PRODUCT_ARTICLE}                  //article/a[contains(@data-gtm-name, "iPad 10ᵉ Génération (2022) 4GB/64GB Wi-Fi Bleu")]//ancestor::article
