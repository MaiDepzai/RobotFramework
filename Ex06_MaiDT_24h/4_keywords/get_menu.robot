***Settings***
Resource    ../0_resources/import.robot

***Keywords***
[KW] - Get header menu using get web elements

    ${actual_list}    Create List

    @{menu_header}        Get Web Elements        //header[@id='headerd']//li[@class='rlt']

    FOR    ${index}    IN     @{menu_header}
        ${value}        Get Text     ${index}
        #Log To Console         \nElement  = ${value}
        Append To List            ${actual_list}        ${value}
    END

    [return]    ${actual_list}