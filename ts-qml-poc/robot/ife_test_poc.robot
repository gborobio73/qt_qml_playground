*** Settings ***
Suite Setup       Set Library Search Order    ImageHorizonLibrary    pyautogui


# https://eficode.github.io/robotframework-imagehorizonlibrary/doc/ImageHorizonLibrary.html
Library                         ImageHorizonLibrary    ${CURDIR}${/}reference_images    screenshot_folder=${TEMPDIR}
Library                         Process
Library                         os
Library                         pyautogui

Test Setup                      Open Application
Test Teardown                   Close Application

*** Test cases ***
IFE Poc
    Set Confidence              0.2
    ${cmi_message_button}=      Wait for    cmi message button     timeout=5
    Log To Console              ${cmi_message_button}\n
    Log To Console              CMI_MESSAGE is visible \n
    Move To                     ${cmi_message_button}
    Click
    Set Confidence              0.7
    # ${poster1}=                 Locate                  poster 1
    ${poster1}=                 Wait for    poster 1     timeout=5
    Log To Console              Left: ${poster1[0]} Top: ${poster1[1]}\n
    # Mac resolution:  Retina display at 2x resolution: https://github.com/asweigart/pyautogui/issues/281
    ${coords}=	                Evaluate     (${poster1[0]/2}, ${poster1[1]/2})
    Log To Console              ${coords}\n
    Move To                     ${coords}   
    pyautogui.drag              ${200}       ${0}        ${2}        button=left
    # Mouse Down                  button=left
    # ${drag_coords}=	            Evaluate     (${coords[0]} + 200, ${coords[1]})
    # Move To                     ${drag_coords}   
    # Mouse Up                    button=left
    BuiltIn.Sleep               2.0

*** Keywords ***
Open Application
    Launch application          ${CURDIR}/../../run.sh ../../main-desktop.qml

Close Application
    # kill the qmlscene
    system                      killall -9 qmlscene