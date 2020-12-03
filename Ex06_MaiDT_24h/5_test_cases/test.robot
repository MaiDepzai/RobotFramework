***Settings***
Resource    ../0_resources/import.robot
Test Setup    [Common] - Open browser        ${url}    ${browser}
Test Teardown    [Common] - Close browser

***Test Cases***
Test
    ${expected_list}        Create List     BÓNG ĐÁ    KINH DOANH    THỊ TRƯỜNG    SỨC KHỎE    HI-TECH    SHOWBIZ    THẾ GIỚI    PHÁI ĐẸP    THỂ THAO    NGOẠI HẠNG ANH    XEM LỊCH
    Set Global Variable    ${expected_list}

    ${actual_list}    Create List

    FOR    ${index}    IN RANGE    1    12
        ${value}        Get Text     //header[@id='headerd']//li[@class='rlt'][${index}]
        #Log To Console         \nElement ${index} = ${value}
        Append To List            ${actual_list}        ${value}
    END
    Log To Console    \nMenu: ${actual_list}

    [KW] - Compare Two List    ${actual_list}      ${expected_list}


Test Using Get Web Elements
    #Get header menu
    ${actual_list}     [KW] - Get header menu using get web elements
    # Get length
    ${length_list}     [Common] - Get list length    ${actual_list}

    Log To Console    \nLength_menu: ${length_list}
    Log To Console    \nActual:${actual_list}
    Log To Console    \nExpected: ${expected_list}

    [KW] - Compare Two List    ${actual_list}      ${expected_list}

    

