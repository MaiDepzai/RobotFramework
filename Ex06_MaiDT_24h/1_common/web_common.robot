***Settings***
Resource    ../0_resources/import.robot

***Keywords***

[Common] - Open browser
    [Arguments]     ${url}  ${browser}
    Open browser    ${url}  ${browser}
    Maximize browser window
    
[Common] - Close browser
    Close browser

[Common] - Click element
    [Arguments]  ${locator}
    wait until keyword succeeds     5s    1s    Wait Until Element Is Visible    ${locator}    timeout=20s    error=Could not find ${locator} element.
    click element    ${locator}

[Common] - Input text into textbox
    [Arguments]    ${locator}    ${text}
    wait until keyword succeeds    10s     1s    Element Should Be Visible    ${locator}
    input text    ${locator}    ${text}
    [return]     ${text}

[Common] - Get list length
    [Arguments]    ${list}
    ${length}     Get Length      ${list}
    [return]    ${length}