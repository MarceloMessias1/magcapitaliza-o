*** Settings ***
Documentation        Essa suíte testa o site da Mag Capitalização
Resource             mag_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar Navegador

*** Test Cases ***
Caso de Teste 01 - Tela Início Home "Nome Parceiro"

    [Documentation]   Esse teste verifica o nome do parceiro na tela inicial
    [Tags]            nome
    Que esteja na Home	
    Verificar se aparece a frase "Olá Parceiro"					
    Verificar se o título da página fica "Home"  
						
					

Caso de Teste 02 - Tela Início Home "Notificação"
    [Documentation]  Esse teste verifica as notificações do parceiro 
    [Tags]           notificacao
    Que esteja na Home														
    Aparecerá notificações "Arquivo recusado"				

Caso de Teste 03:Tela Início Home "Filtros"
    [Documentation]  Esse teste verifica os filtros rápidos
    [Tags]    filtros
    Que esteja na Home							
    # Quando	estiver com login válido 							
    aparecerá "filtros de acesso rápido" ao parceiro							
							
    								
