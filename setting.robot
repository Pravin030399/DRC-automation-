*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${url}  https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6hEFvum7-punf-F7ecTOSK3VM1DZYzWqYzQ&usqp=CAU
${name}      sara liyana
${name1}     @
${name2}     121
${name3}     PravinKannappanisveryhandsome


*** Test Cases ***
Open Setting
    Open Browser   http://localhost:3000/  chrome
    click element   //*[@id="root"]/div/div/div[1]/div[1]/button
#    click element   //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div[2]/div[2]/button
#    click element   //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div[1]/button
#    wait until page contains element   //*[@class="ReactModal__Content ReactModal__Content--after-open pop-up pop-up"]
#    wait until page contains element  //*[@class="input"]
#    input text  css:input[placeholder="https://example.com"]  ${url}
#    sleep      2 seconds

#cancel pic
#     click button   xpath:/html/body/div[4]/div/div/div[2]/button[2]
#     sleep      2 seconds


#upload pic
#    click element   //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div[1]/button
#    wait until page contains element   //*[@class="ReactModal__Content ReactModal__Content--after-open pop-up pop-up"]
#    wait until page contains element  //*[@class="input"]
#    input text  css:input[placeholder="https://example.com"]  ${url}


#cancel name
#    click element   xpath:/html/body/div[9]/div/div/div[2]/button[2]
#     sleep      2 seconds

#upload name
#     click element  //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div[2]/div[2]/button
#     input text   css:input[placeholder="Your name please!"]  ${name}
#     sleep      2 seconds

#check validation
#    click element  xpath:/html/body/div[5]/div/div/div[1]/input
#    input text  css:input[placeholder="Enter new profile name"]  ${name1}
#    input text  css:input[placeholder="Enter new profile name"]  ${name2}
#    input text  css:input[placeholder="Enter new profile name"]  ${name3}
#    input text  css:input[placeholder="Enter new profile name"]  ${empty}
#    click element  xpath:/html/body/div[5]/div/div/div[2]/button[1]
#    sleep  3

#mode
#    click button   xpath://*[@id="root"]/div/div/div[2]/div[3]/div/button

#   Logout
#    Click element  //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div[2]/button
#    sleep  3

    close browser
