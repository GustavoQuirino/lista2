#INCLUDE 'TOTVS.CH'

User Function cons_medio()
    Local nTempo := nVelocidade := nDistancia := nLitros := nCons := 0

    nTempo := VAL(FwInputBox('QUAL FOI O TEMPO GASTO NA VIAGEM EM HORAS ?'))
    nTempo := nTempo 
    nVelocidade := VAL(FwInputBox('QUAL FOI A VELOCIDADE M�DIA DA VIAGEM ?'))
    nCons := VAL(FwInputBox('QUAL O CONSUMO MEDIO DO VE�CULO ? '))

    nDistancia := nTempo  * nVelocidade
    nLitros := ROUND((nDistancia / nCons),1)

    FwAlertSuccess('A velocidade m�dia � de : ' + CVALTOCHAR(nVelocidade) + ' KM/H ' + CRLF + ;
    'O tempo gasto foi de  : ' + CVALTOCHAR(nTempo) + ' Hrs ' + CRLF + ;
    'A distancia percorrida foi de : ' + CVALTOCHAR(nDistancia) + ' KM' + CRLF + ;
    'A quantidade de litros de combust�vel foi : ' + CVALTOCHAR(nLitros) + ' Litros.','CONSUMO DA VIAGEM')

Return
