*** Settings ***   
Library         SeleniumLibrary
Resource        ../components/components.robot


*** Keywords ***
CalculoSomaCinco 
     Wait Until Element Is Visible      ${BotaoDois}     timeout=2

     Click Element    ${BotaoDois}
     Click Element    ${BotaoMais}
     Click Element    ${BotaoTres}
     Click Element    ${BotaoIgual}


     Execute JavaScript   document.getElementsByClassName("display")[0].textContent == "5"

     Clicar no botao dois
  Click Element    ${BotaoDois}
     Clicar no botao tres
  Click Element    ${BotaoTres}
     Clicar no botao mais
  Click Element    ${BotaoMais}
     Clicar no botao igual   
  Click Element    ${BotaoIgual}
     Verificar Soma 5
     Wait For Condition     return document.getElementsByClassName("display")[0].textContent == "5"     timeout=2