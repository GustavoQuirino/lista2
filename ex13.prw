#INCLUDE 'TOTVS.CH'

User Function usermult()

    Local nNum := nCont := 0
    Local nMult := nLimite := 0
    Local cMult := ''

    nMult := VAL(FwInputBox('QUAL O N�MERO DO MULTIPLO ?'))
    nLimite := VAL(FwInputBox('QUAL O N�MERO LIMITE ?'))

    for nCont := 1 to nLimite
        if nCont % nMult = 0
            nNum := nCont
            cMult+= CVALTOCHAR(nNum) + ' | '
        endif     
    next 

    FwAlertSuccess(cMult ,'MULTIPLOS')
    
Return 

