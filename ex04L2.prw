#INCLUDE 'TOTVS.CH'

User Function quadrado()
    Local nA := nB := nDif := nQuad := 0

    nA := VAL(FwInputBox('Digite o valor para A'))
    nB := VAL(FwInputBox('Digite o valor para B'))

    nDif := nA - nB 
    nQuad := nDif * nDif

    FwAlertSuccess('O resultado de ' + CVALTOCHAR(nA) + ' - ' + CVALTOCHAR(nB) + ;
    ' ao quadrado é : ' + CVALTOCHAR(nQuad) , 'RESULTADO')

Return 
