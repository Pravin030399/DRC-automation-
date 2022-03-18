*** Settings ***
Library   SeleniumLibrary
#
*** Test Cases ***
#Test title
#    [Tags]    DEBUG
#    Provided precondition
#    When action
#    Then check expectations
#
*** Variables ***
${url}   http://localhost:3000/
${browser}   chrome
${title_var}  http://localhost:3000/crypto-home
*** Test Cases ***
Google
      drcproject

*** Keywords ***

drcproject
	  Open Browser  ${url}   ${browser}
	  Maximize Browser Window
      wait until page contains element  //*[@id="root"]/div/div/div[1]/div[2]/div[1]  10
      click element  //*[@class="sidebar-option-cont sidebar-option-cont-dark"]
      wait until page contains element  //*[@class="leaderboard"]  20
      wait until page contains element  //*[@class="crypto-news-feed"]  20
#     Directing to the crptocurrency's details and chart

#      click element  //*[@class="crypto-deets"]
#      wait until page contains element  //*[@class="coin-header-stats-cont"]  10
#	  wait until page contains element  //*[@class="chart-cont"]  10
#	  sleep  2
#      click element  //*[@id="root"]/div/div/div[2]/div[1]/button
#      sleep  2

#     Clicking on show more cyrptocurrencys

#      wait until page contains element  //*[@class="total-box cards"]   20
#      wait until page contains element  //*[@class="leaderboard"]  20
#      sleep  3
#      click element  //*[@class="sidebar-option-cont sidebar-option-cont-dark"]
#      sleep  2
#      click element  //*[@data-testid="ReadMoreIcon"]
#      wait until page contains element  //*[@class="leaderboard"]  20
#      sleep  2

#     Directing to respective news link

#      click element  //*[@id="root"]/div/div/div[1]/div[2]/div[1]
#      wait until page contains element  //*[@class="crypto-news-feed"]  20
#      click element  //*[@id="root"]/div/div/div[2]/div[4]/div/div/a[1]/div/div[2]
#     switch window  locator=NEW
#      ${title_var}        Get Window Titles
#      switch window       title=${title_var}
#      sleep  3

#      Clicking on show more news
#      wait until page contains element  //*[@id="root"]/div/div/div[2]/div[4]/div/div  20
#      click element  //svg[@id="root"]/div/div/div[2]/div[4]/h5/svg position=[2]
#      sleep  3


#     Login breach

#	  @{browser_ids}=	Get Browser Ids
#	  log to console     @{browser_ids}
#	  switch browser    Google
#      Switch Window  locator=NEW
#	  wait until page contains element  //*[@class="whsOnd zHQkBf"]  30
#	  input text  //*[@id="identifierId"]  irpravin@gmail.com
#	  wait until page contains element  //*[@id="identifierNext"]/div/button/div[3]  10
#	  click element  //*[@id="identifierNext"]/div/button/span
#	  //*[@class="whsOnd zHQkBf"]   irpravin@gmail.com
	  Close Browser