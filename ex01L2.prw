#INCLUDE 'TOTVS.CH'

User Function calculaNum()

    Local nNum1 := nNum2 := 0
    Local nSoma := nDif := nProd := nQuoci := 0

    while nNum1 <= 0 
        nNum1 := VAL(FwInputBox('DIGITE O PRIMEIRO NUMERO'))
    end

    while nNum2 <= 0 
        nNum2 := VAL(FwInputBox('DIGITE O SEGUNDO NUMERO'))
    end

    nSoma := nNum1 + nNum2
    nDif := nNum1 - nNum2
    nProd := nNum1 * nNum2
    nQuoci := nNum1 / nNum2

    FwAlertSuccess('A soma entre os n�meros � : ' + CVALTOCHAR(nSoma) + CRLF + ;
                    'A diferen�a entre os n�meros � : ' + CVALTOCHAR(nDif) + CRLF + ;
                    'O produto entre os n�meros � : ' + CVALTOCHAR(nProd) + CRLF + ;
                    'O quociente entre os n�meros � : ' + CVALTOCHAR(nQuoci) ,'RESULTADO')
    
Return 
