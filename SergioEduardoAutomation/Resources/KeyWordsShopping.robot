*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/LocatorsShopping.robot  

*** Keywords ***
Dado que estou na home page
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Window Size    1200    4000
    Set Selenium Speed    2 seconds

Então o título da página deve constar "${Titulo}"
    Title Should Be    title=${Titulo}

Quando clico em roupa masculina
    Wait Until Element Contains    locator=${Locator_Roupa}    text=MASCULINO
    Click Element    locator=${Locator_Roupa}

Então leio que o título da página é "${TituloMasculino}"
    Sleep    4 seconds
    Title Should Be    title=${TituloMasculino}

E clico para filtrar por categoria masculino    
    Sleep    4 seconds
    Select Checkbox    locator=${Locator_Categoria}

E clico na cor bege    
    Select Checkbox    locator=${Locator_Cor01}
   
E clico na marca Reserva
    Select Checkbox    locator=${Locator_Marca}

E clico na subcategoria Bermudas 
    Select Checkbox    locator=${Locator_Bermuda}

Então vejo a foto da "${BermudaIron}"
    Element Should Be Visible    locator=//span[contains(text(),'${BermudaIron}')]

E clico nela
    Wait Until Element Is Visible    locator=${Locator_Clico01}
    Click Element    locator=${Locator_Clico01}

Quando leio "${TituloCadeirante}" como sendo o texto principal da página
    Sleep    4 seconds
    Element Should Be Visible    locator=${Locator_TitCad}

Então clico para ler a descrição deste produto
    Click Element    locator=${Locator_DescrProd}

E clico na cor Marinho
    Click Element    locator=${Locator_Cor02}

E clico no tamanho 44
    Click Element    locator=${Locator_Tam44}

Então decido comprar clicando em "${AdicionarASacola}"
    Click Element    locator=//span[contains(text(),'${AdicionarASacola}')]

E, para conferir, clico no ícone da sacola, canto superior direito
    Sleep    3 seconds
    Click Element    locator=${Locator_Sac}

Então vejo que realmente consta na sacola a "${MinhaSacolaComABermuda}"
    Element Should Be Visible    locator=//a[@class='c-on-base t-title lh-copy fw6 no-underline fw5-m lojausereserva-product-list-0-x-productName '][contains(.,'${MinhaSacolaComABermuda}')]

E decido acrescentar mais uma unidade da bermuda (totalizando, então, 2 peças)
    Click Element    locator=${Locator_Adicionar}

Então informo "${CupomDovendedor}" como sendo o Cupom do Vendedor
    Input Text    locator=${Locator_CupomVend}    text=${CupomDovendedor}

Então digito "${CupomPromocional}" no campo referente ao Cupom Promocional
    Input Text    locator=${Locator_CumpomProm}   text=${CupomPromocional}

Então informo que o meu Cep é "${Cep}"
    Input Text    locator=${Locator_Cep}    text=${Cep}

E clico em OK
    Click Element    locator=${Locator_Ok}
    
E descubro que a entrega será "${SemCustoAdicional}"
    Element Should Be Visible    locator=//span[contains(text(),'${SemCustoAdicional}')]



