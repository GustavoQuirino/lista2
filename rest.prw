#INCLUDE 'RESTFUL.CH'
#INCLUDE 'PROTHEUS.CH'

User Function restApi()

    Local cURL := 'https://viacep.com.br/ws/'
    Local oRest := FWRest():New(cURL)
    Local cCep := ''
    Local cErro := ''
    Local cResultado := ''

    cCep := FwInputBox('DIGITE O CEP')
    oRest:setPath(cCep + '/json/')

    oJson := JSonObject():New()

    if oRest:Get()
        cResultado := oRest:GetResult()
        cErro := oJson:fromJson(cResultado)
        if empty(cErro)
            cRua := oJson
            FwAlertInfo(cRua["logradouro"]) 
        else 
            alert(cErro)
        endif 
    endif             

Return 
