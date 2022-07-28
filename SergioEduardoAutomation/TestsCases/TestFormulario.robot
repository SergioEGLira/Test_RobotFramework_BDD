*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeyWordsFormulario.robot

*** Test Cases ***
Caso de teste: Preenchendo corretamente os dados do formulário
    Dado que estou na home page    ${SiteUrl}    ${Browser}    
    Então o título da página deve constar "Formulário para Simulação - OG3 Construtora"
    Então verifico se aparece a opção "Preencha o formulário abaixo para simular seu financiamento"
    E cliclo nela
    E digito que "Robot Framework" é meu nome completo
    E digito que "(11) 2.3333.4444" é o número do meu celular/whatsapp    
    E digito "robot@framework.com.br" como sendo o meu endereço do meu e-mail
    E digito os seguintes números para informar meu CPF:    12345678901
    E digito os seguintes números para informar a minha data de nascimento:    01022000
    E clico na opção em que afirmo que tenho 3 anos de registro em carteira
    E digito o valor de "R$ 6.000,00" como meu valor referente a renda bruta mensal
    E clico na opção em que afirmo que minha renda é formal
    E clico na opção em que afirmo que tenho filhos menores
    E clico na opção em que afirmo que tenho outro imóvel em meu nome
    E clico na opção em que afirmo que não possuo restrição em meu nome
    E clico na opção em que afirmo que não tenho outro empréstimo em meu nome
    E clico na opção em que afirmo que não sou casado
    Então descrevo que o imóvel do meu interesse é "Apto 04 quartos, 03 suítes, ampla varanda, 90m2, com 03 vagas de garagens"


