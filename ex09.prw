#INCLUDE 'TOTVS.CH'

User Function diasMes()

    Local aMeses := {{'Janeiro',31},{'Fevereiro',28},{'Mar�o',31},{'Abril',30},{'Maio',31},{'Junho',30},;
                    {'Julho',31},{'Agosto',31},{'Setembro',30},{'Outubro',31},{'Novembro',30},{'Dezembro',31}}

    Local nMes := 0

    while nMes < 1 .OR. nMes > 12
        nMes := VAL(FwInputBox('DIGITE O N�MERO DO M�S (1 a 12): '))
    end

    FwAlertSuccess('O M�S ESCOLHIDO � : ' + UPPER(CVALTOCHAR(aMeses[nMes,1])) +  CRLF + ;
    'ESTE M�S TEM ' + CVALTOCHAR(aMeses[nMes,2]) + ' DIAS. ', 'DIAS DO M�S')
    
Return 
