*** Settings ***
Library                         pyautogui
Library                         lib/MyLibrary.py

*** Test Cases ***

My First Robot Test
    # Log To Console              Hello Robot World!
    ${cursor} =                 position
    Log To Console              ${cursor}

    typewrite                   \nHello world!\n
    # pyautogui.moveTo            ${100}   ${100}     ${2}
    leftClick                  ${650}   ${780}
    BuiltIn.Sleep               2.0
    # ${result}=                  join two strings        Hello   World
    # Log To Console              ${result}