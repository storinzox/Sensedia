*** Settings ***
Documentation    Essa Suite para o Desafio Trello QA
Resource         trello_resources.robot
Test Setup       Abrir o Navegador
Test Teardown    Fechar o Navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao Login
    [Documentation]    Este teste verifica o site e o acesso ao Login no site Trello.com
    ...                verificando user/pass
    [Tags]    Login    Acesso
    Acessar a Home page do site Trello.com
    Verificar o titulo da pagina fica "Trello"
    Entrar em Login "Fazer login"
    Verificar se aparece a frase "Fazer Login no Trello"
    
Caso de Teste 02 - Login Invalido
    [Documentation]    Nesta suite fazer a validação com User e/ou Pass incorretos
    [Tags]    invalido    incorreto
    Acessar a Home page do site Trello.com
#    Verificar o titulo da pagina fica "Trello"
    Entrar em Login "Fazer login"
    Verificar se aparece a frase "Fazer Login no Trello"
    Digitar o e-mail do ususário
#    Verificar se mesagem de erro de Senha aparece
#    Clicar em Fazer Login
#    Verificar mensagem de erro de e-mail
