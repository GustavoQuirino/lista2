#INCLUDE 'TOTVS.CH'

User Function divisiveis()
    Local n1 := n2 := n3 := n4 := 0
    Local cDivisiveis := ''

    n1 := VAL(FwInputBox('Digite o primeiro n�mero : '))
    n2 := VAL(FwInputBox('Digite o segundo n�mero : '))
    n3 := VAL(FwInputBox('Digite o terceiro n�mero : '))
    n4 := VAL(FwInputBox('Digite o quarto n�mero : '))

    if n1 % 2 = 0 .AND. n1 % 3 = 0
        cDivisiveis+= CVALTOCHAR(n1) + ' � divis�vel por 2 e 3 .' + CRLF
    endif 

    if n2 % 2 = 0 .AND. n2 % 3 = 0
        cDivisiveis+= CVALTOCHAR(n2) + ' � divis�vel por 2 e 3 .' + CRLF
    endif 

    if n3 % 2 = 0 .AND. n3 % 3 = 0
        cDivisiveis+= CVALTOCHAR(n3) + ' � divis�vel por 2 e 3 .' + CRLF
    endif 

    if n4 % 2 = 0 .AND. n4 % 3 = 0
        cDivisiveis+= CVALTOCHAR(n4) + ' � divis�vel por 2 e 3 .' + CRLF
    endif 

    FwAlertSucces('Os numeros divis�veis s�o : ' + CRLF + CVALTOCHAR(cDivisiveis) , 'RESULTADO')

Return 
