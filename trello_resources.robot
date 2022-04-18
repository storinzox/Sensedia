*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://trello.com/home
${EMAIL}          storinzox@gmail.com
${RODAPE_LOAD}    //p[@class='global-footer-detail'][contains(.,'© Copyright 2022. Todos os direitos reservados.')]
${TOP_LOGIN}      //a[@class='btn btn-sm btn-link text-primary']



*** Keywords ***
Abrir o Navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o Navegador
    Capture Page Screenshot
    Close Browser

Acessar a Home page do site Trello.com
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${RODAPE_LOAD}

Verificar o titulo da pagina fica "${TITULO}"
    Title Should Be    title=${TITULO}

Entrar em Login "Fazer login"
    Click Element    locator=${TOP_LOGIN}

Verificar se aparece a frase "${TRELLO_LOGIN}"
   Wait Until Page Contains    text=${TRELLO_LOGIN}
   Wait Until Element Is Visible    locator=//h1[contains(.,'${TRELLO_LOGIN}')]

Digitar o e-mail do ususário
    Input Text      locator=//input[contains(@inputmode,'email')]    text=${EMAIL}
    Click Button    locator=//input[@value='Fazer login']
    Wait Until Element Is Visible    locator=//div[@title='${EMAIL}']
    Input Password   locator=//input[contains(@name,'password')]    password=
    Click Button    locator=//button[@type='submit']