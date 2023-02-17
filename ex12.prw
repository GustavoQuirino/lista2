#INCLUDE 'TOTVS.CH'

User Function multiplos3()

    Local nNum := nCont := 0
    Local cMult := ''

    for nCont := 1 to 100
        if nCont % 3 = 0
            nNum := nCont
            cMult+= CVALTOCHAR(nNum) + ' | '
        endif     
    next 

    FwAlertSuccess(cMult ,'MULTIPLOS DE 3')
    
Return 
