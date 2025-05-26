*** Settings ***
Resource    BrowserKeywords.robot
Library     SeleniumLibrary
Resource    ../elements/ElementsLoginPageFreto.resource

*** Keywords ***
Inserir usuário Válido
    Wait Until Element Is Visible    ${BTN_EXPLORE_SOL}    5s
    Click Element                    ${BTN_EXPLORE_SOL}

Clicar no Botão de Entrar
    Capture Page Screenshot
    Wait Until Element Is Visible    ${MANU_SOMOS_VERY}    5s
    Click Element                    ${MANU_SOMOS_VERY}

Verificar Login Bem Sucedido
    Capture Page Screenshot

*** Test Cases ***
Teste Headless Chrome Na Pipeline
    [Setup]     Iniciar sessão web      chrome    ${OPTIONS}    veryCode
    Given Inserir usuário Válido
    When Clicar no Botão de Entrar
    Then Verificar Login Bem Sucedido
    [Teardown]    Finalizar sessão web
