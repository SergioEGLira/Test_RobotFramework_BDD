*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeyWordsShopping.robot

*** Test Cases ***
Caso de teste: Escolhendo bermuda
    Dado que estou na home page    ${SiteUrl}    ${Browser}    
    Então o título da página deve constar "Reserva | Site Oficial | Roupa masculina é Reserva"
    Quando clico em roupa masculina
    Então leio que o título da página é "RESERVA Masculino"
    E clico para filtrar por categoria masculino
    E clico na cor bege    
    E clico na marca Reserva
    E clico na subcategoria Bermudas    
    Então vejo a foto da "BERMUDA IRON ADAPTE CADEIRANTE"
    E clico nela
    Quando leio "BERMUDA ARMY ADAPTE CADEIRANTE" como sendo o texto principal da página
    Então clico para ler a descrição deste produto
    E clico na cor Marinho
    E clico no tamanho 44
    Então decido comprar clicando em "ADICIONAR À SACOLA"
    E, para conferir, clico no ícone da sacola, canto superior direito
    Então vejo que realmente consta na sacola a "BERMUDA ARMY ADAPTE CADEIRANTE"
    E decido acrescentar mais uma unidade da bermuda (totalizando, então, 2 peças)
    Então informo "cupom Ae63" como sendo o Cupom do Vendedor
    Então digito "Prompção WxTR" no campo referente ao Cupom Promocional
    Então informo que o meu Cep é "05428020"
    E clico em OK
    E descubro que a entrega será "Grátis"




