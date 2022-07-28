*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/LocatorsFormulario.robot   

*** Keywords ***
Dado que estou na home page
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Window Size    1000    2000
    Set Selenium Speed    0.1 seconds

Então o título da página deve constar "${Titulo}"
    Title Should Be    title=${Titulo}

Então verifico se aparece a opção "${Preencha o formulário abaixo...}"
    Element Should Be Visible    locator=//span[contains(text(),'${Preencha o formulário abaixo...}')]
    
E cliclo nela
    Click Element    locator=${Locator_ClicoNela}

E digito que "${arg_nomeCompleto}" é meu nome completo    
    Input Text    locator=${Locator_NomeCompleto}    text=${arg_nomeCompleto}

E digito que "${arg_celularWatsapp}" é o número do meu celular/whatsapp       
    Input Text    locator=${Locator_Cel}    text=${arg_celularWatsapp}

E digito "${arg_email}" como sendo o meu endereço do meu e-mail     
    Input Text    locator=${Locator_Email}    text=${arg_email}

E digito os seguintes números para informar meu CPF:
    [Arguments]    ${arg_cpf}
    Input Text    locator=${Locator_Cpf}    text=${arg_cpf}

E digito os seguintes números para informar a minha data de nascimento:
    [Arguments]    ${arg_dataDeNascimento}
    Input Text    locator=${Locator_DataNasc}    text=${arg_dataDeNascimento}

E clico na opção em que afirmo que tenho 3 anos de registro em carteira
    Click Button    locator=${Locator_RegCart}

E digito o valor de "${arg_rendaMensal}" como meu valor referente a renda bruta mensal
    Input Text    locator=${Locator_Renda}    text=${arg_rendaMensal}

E clico na opção em que afirmo que minha renda é formal
    Click Button    locator=${Locator_Formal}

E clico na opção em que afirmo que tenho filhos menores
    Click Button    locator=${Locator_Filhos}

E clico na opção em que afirmo que tenho outro imóvel em meu nome
    Click Button    locator=${Locator_Imoveis}

E clico na opção em que afirmo que não possuo restrição em meu nome
    Click Button    locator=${Locator_Restricao}

E clico na opção em que afirmo que não tenho outro empréstimo em meu nome
    Click Button    locator=${Locator_Emprestimo}

E clico na opção em que afirmo que não sou casado
    Click Button    locator=${Locator_Casado}

Então descrevo que o imóvel do meu interesse é "${arg_descriçãoDoImovel}"
    Input Text    locator=${Locator_DescrImov}    text=${arg_descriçãoDoImovel}
