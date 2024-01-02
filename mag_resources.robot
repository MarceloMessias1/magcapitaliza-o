*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://outsystemsdev.simple2u.com.br/PortalIncentivo/Home
${PARCEIRO}    //span[@class='font-size-h2'][contains(.,'Olá, parceiro.')]
${TEXTO_PARCEIRO}      Olá, parceiro.    
${NOTIFICACAO}    //div[@class='flex1'][contains(@id,'2-b4-cardNotificationTitle')][contains(.,'Arquivo recusado')]
${TEXTO_NOTIFICAÇÃO}   Arquivo recusado 
${CONSULTA}  //div[@class='cardMenu-title'][contains(.,'Consulta de Arquivos')]
${CONSULTA_ARQUIVOS}  Consulta de Arquivos

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome 
    Maximize Browser Window

Fechar Navegador
    Close Browser


Que esteja na Home
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${PARCEIRO}

Verificar se aparece a frase "Olá Parceiro"
    Wait Until Page Contains    text=${TEXTO_PARCEIRO}
    Wait Until Element Is Visible    locator=${PARCEIRO}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}
    
Aparecerá notificações "Arquivo recusado"					
     Wait Until Page Contains    text=${TEXTO_NOTIFICAÇÃO}
     Wait Until Element Is Visible    locator=${NOTIFICACAO}

aparecerá "filtros de acesso rápido" ao parceiro
     Wait Until Page Contains    text=${CONSULTA_ARQUIVOS}
     Wait Until Element Is Visible    locator=${CONSULTA}
        