*** Settings *** 
Resource          ../../config/config.robot
Library         SeleniumLibrary


*** Keywords *** 
Start Test
    Open Browser     ${URL_HOST} ${BROWSER}
    Set Window Size  ${BROWSER_COSTUMER_HEIGHT} ${BROWSER_COSTUMER_WIDTH}
    Set Selenium Implicit Wait    ${TIME_TO_WAIT}
    
Finish Test
    Capture Page Screenshot
    Close Browser 
