#INCLUDE 'TOTVS.CH'

User Function parimpar()
    
    Local nNum := nSoma := nCont := 0
    Local cParImpar := ''

    nNum := VAL(FwInputBox('DIGITE AT� QUAL N�MERO DESEJA SOMAR : '))
    
    while cParImpar != 'P' .AND. cParImpar != 'I'
        cParImpar := UPPER(FwInputBox('PAR OU IMPAR ? (P ou I)')) 
    end
    
    if cParImpar == 'P'
        for nCont := 2 to nNum 
            nSoma += nCont
            nCont++
        next 
    else 
        for nCont := 1 to nNum 
            nSoma += nCont
            nCont++
        next 
    endif 

    if cParImpar == 'P'
        cParImpar := ' pares '
    else 
        cParImpar := ' impares ' 
    endif        

    FwAlertSuccess('A soma dos primeiros numeros ' + CVALTOCHAR(cParImpar) + 'at� ' + CVALTOCHAR(nNum) + ' � : ' + CVALTOCHAR(nSoma), 'RESULTADO ')        

Return 
