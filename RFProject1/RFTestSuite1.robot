*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
FaceBookLogin
    Open Browser                 ${url}    ${Browser}
    Maximize Browser Window
    Set Browser Implicit Wait    2
    Input Text                   name=email     @{CREDENTIALS}[0]
    Input Text                   id=pass        &{LOGINDATA}[password]
    Press Keys                   id=pass        ENTER
    # Click Element                id=userNavigationLabel
    # Click Element                xpath://li[@data-gt='{"ref":"async_menu","logout_menu_click":"menu_logout"}']
    # Log                          Test Completed
    Log                          This Test was executed By %{username} on %{os}
*** Variables ***
${url}                           https://www.facebook.com/ 
${url1}                          https://www.google.com/gmail/about/#
@{usercredentials}               venkateshwarlu.girigani@gmail.com    xxxxxx
${Browser}                       chrome
@{CREDENTIALS}                   8106999519     
&{LOGINDATA}                     password=xxxxxx
