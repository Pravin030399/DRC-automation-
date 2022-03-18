*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}   http://localhost:3000/
${browser}   chrome
#${windowid}  yDmH0d

*** Test Cases ***
Google
      drcproject

*** Keywords ***

drcproject
	  Open Browser  ${url}   ${browser}
	  Maximize Browser Window
      wait until page contains element  //*[@id="root"]/div/div/div[1]/div[2]/div[1]  10
      click element  //*[@id="root"]/div/div/div[1]/div[2]/div[2]
      wait until page contains element  //*[@id="root"]/div/div/div[2]/div[2]  10
      click element  //*[@id="root"]/div/div/div[2]/div[2]/div[1]/a/div
      wait until page contains element  //*[@id="root"]/div/div/div[2]/div[2]/div[1]/div[2]  20
      sleep  3
      wait until page contains element  //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div/div[2]/div  20
#     Mouse howering
      mouse over  //*[@id="root"]/div/div/div[2]/div[2]/div[1]/div[2]/div[3]
#     Check drop down element
      double click element  //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div/div[1]/div[2]
      get element count  //*[@id="root"]/div/div/div[2]/div[2]/div[3]/div/h5
      sleep  3
      close browser
