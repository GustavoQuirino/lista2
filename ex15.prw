#INCLUDE 'TOTVS.CH'

User Function fibonacci()
    
    Local nNum := nCont := 0
    Local cFibonacci := ' 1 | '
    Local nF1 := nRes := 0
    Local nF2 := 1

    nNum := VAL(FwInputBox('QUANTOS NÚMEROS DESEJA EXIBIR ? '))

    if nNum > 1
        for nCont := 1 to (nNum - 1)
            nRes := nF1 + nF2
            nF1 := nF2
            nF2 :=  nRes
            cFibonacci+= CVALTOCHAR(nRes) + ' | '
        next
    endif
               
    FwAlertSuccess(cFibonacci , 'SEQUENCIA DE FIBONACCI ')        

Return 

