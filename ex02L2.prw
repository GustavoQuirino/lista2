#INCLUDE 'TOTVS.CH'

User Function litrosgasolina()
    Local nTempo := nVelocidade := nDistancia := nLitros := 0

    nTempo := VAL(FwInputBox('QUAL FOI O TEMPO GASTO NA VIAGEM EM HORAS ?'))
    nTempo := nTempo 
    nVelocidade := VAL(FwInputBox('QUAL FOI A VELOCIDADE MÉDIA DA VIAGEM ?'))

    nDistancia := nTempo  * nVelocidade
    nLitros := ROUND((nDistancia / 12),1)

    FwAlertSuccess('A velocidade média é de : ' + CVALTOCHAR(nVelocidade) + ' KM/H ' + CRLF + ;
    'O tempo gasto foi de  : ' + CVALTOCHAR(nTempo) + ' Hrs ' + CRLF + ;
    'A distancia percorrida foi de : ' + CVALTOCHAR(nDistancia) + ' KM' + CRLF + ;
    'A quantidade de litros de combustível foi : ' + CVALTOCHAR(nLitros) + ' Litros.','CONSUMO DA VIAGEM')

Return 
