*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}   http://localhost:3000/
${browser}   chrome
#${windowid}  yDmH0d
${windowhandles}  http://localhost:3000/

*** Test Cases ***
Google
      drcproject

*** Keywords ***

drcproject
	  Open Browser  ${url}   ${browser}
	  Maximize Browser Window
      wait until page contains element  //*[@id="root"]/div/div/div[1]/div[2]/div[1]  10
      click element  //*[@id="root"]/div/div/div[1]/div[2]/div[3]
      wait until page contains element  //*[@id="root"]/div/div/div[2]/div[2]/a[1]/div/div[2]  10
      mouse over  //*[@id="root"]/div/div/div[2]/div[2]/a[1]/div/div[2]
      click element  //*[@id="root"]/div/div/div[2]/div[2]/a[1]/div/div[2]
      ${title_var}        Get Window Titles
      switch window       title=${title_var}[1]
      close window

#      ${windowhandles}= Get Window Handles
#      Switch Window  ${windowhandles}[1]
#      close window
#      Switch Window  ${windowhandles}[0]


#      switch window  locator=NEW
#      Execute Javascript   window.open('https://www.benzinga.com/markets/cryptocurrency/22/03/26048222/memecoins-explained-back-to-basics');