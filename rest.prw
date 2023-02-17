#INCLUDE 'TOTVS.CH'
#INCLUDE 'RESTFUL.CH'
#INCLUDE 'TBICONN.CH'

User Function restApi()

    Local cURL := 'https://cep.awesomeapi.com.br/json/'
    Local oRest := FWRest():New(cURL)
    Local cCep := ''

    cCep := FwInputBox('DIGITE O CEP')

    oRest:setPath(cCep)

    Alert(oRest['adress:'][1])
    
Return 
