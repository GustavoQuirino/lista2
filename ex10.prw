#INCLUDE 'TOTVS.CH'

User Function maiormenor()

    Local aNumeros := {}
    Local nNum := nCont := 0

    for nCont := 1 to 5
        nNum := VAL(FwInputBox('DIgite o ' + CVALTOCHAR(nCont) + ' valor : '))
        AADD(aNumeros,nNum)
    next 

    aNumeros := ASORT(aNumeros)

    FwAlertSuccess('O MENOR VALOR � : ' + CVALTOCHAR(aNumeros[1]) + CRLF + ;
    'E O MAIOR VALOR � : ' + CVALTOCHAR(aNumeros[5]) ,'VALORES')    
    
Return 
