#INCLUDE 'TOTVS.CH'

User Function valoresrandom()

    Local nValor := nCont := 0
    Local cResultado := ''

    for nCont := 1 to 50 
        nValor := RANDOMIZE(10,99)
        if nCont < 50
            cResultado+= CVALTOCHAR(nValor) + ' , '
        else 
            cResultado+= CVALTOCHAR(nValor)
        endif 
    next 

    FwAlertSuccess(cResultado, 'NUMEROS')
    FwAlertInfo('AGORA UTILIZANDO O WHILE !')

    nCont := 1
    cResultado := ''

    while nCont <= 50
        nValor := RANDOMIZE(10,99)
        if nCont == 50
            cResultado+= CVALTOCHAR(nValor) 
        else 
            cResultado+= CVALTOCHAR(nValor) + ' , '
        endif 
        nCont++
    end 

    FwAlertSuccess(cResultado, 'NUMEROS') 

Return 
