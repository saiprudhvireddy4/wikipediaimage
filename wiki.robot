*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
wiki namesearch
    open browser    https://www.wikipedia.org/  chrome
    maximize browser window

    input text  xpath://*[@id="searchInput"]    MSDHONI
    sleep   1
    click element  xpath://*[@id="search-form"]/fieldset/button
    click link  xpath://*[@id="mw-content-text"]/div[4]/div[2]/ul/li[1]/table/tbody/tr/td[2]/div[1]/a
    ${text}     get text    xpath://*[@id="mw-content-text"]/div[1]/table[2]/tbody/tr[16]/td
    capture element screenshot  xpath://*[@id="mw-content-text"]/div[1]/table[2]/tbody/tr[1]/td/a/img   dhoni.png
    log to console  ${text}