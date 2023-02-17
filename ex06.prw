#INCLUDE 'TOTVS.CH'

User Function divisiveis()
    Local n1 := n2 := n3 := n4 := 0
    Local cDivisiveis := ''

    n1 := VAL(FwInputBox('Digite o primeiro número : '))
    n2 := VAL(FwInputBox('Digite o segundo número : '))
    n3 := VAL(FwInputBox('Digite o terceiro número : '))
    n4 := VAL(FwInputBox('Digite o quarto número : '))

    if n1 % 2 = 0 .AND. n1 % 3 = 0
        cDivisiveis+= CVALTOCHAR(n1) + ' é divisível por 2 e 3 .' + CRLF
    endif 

    if n2 % 2 = 0 .AND. n2 % 3 = 0
        cDivisiveis+= CVALTOCHAR(n2) + ' é divisível por 2 e 3 .' + CRLF
    endif 

    if n3 % 2 = 0 .AND. n3 % 3 = 0
        cDivisiveis+= CVALTOCHAR(n3) + ' é divisível por 2 e 3 .' + CRLF
    endif 

    if n4 % 2 = 0 .AND. n4 % 3 = 0
        cDivisiveis+= CVALTOCHAR(n4) + ' é divisível por 2 e 3 .' + CRLF
    endif 

    FwAlertSucces('Os numeros divisíveis são : ' + CRLF + CVALTOCHAR(cDivisiveis) , 'RESULTADO')

Return 
