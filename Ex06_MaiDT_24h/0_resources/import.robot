*** Settings ***
Library           SeleniumLibrary
Library           String
Library            Collections

### Common Keywords ###
Resource    ../1_common/web_common.robot

### Keywords ###
Resource    ../4_keywords/equal_list.robot
Resource    ../4_keywords/get_menu.robot

###     VARS    ###
*** Variables ***
${url}      https://www.24h.com.vn
${browser}      chrome