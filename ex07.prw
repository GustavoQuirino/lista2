#INCLUDE 'TOTVS.CH'

User Function pokergame()
    
    Local nHoraInicio := nHoraFinal := nDuracao := 0

    nHoraInicio := VAL(FwInputBox('DIGITE A HORA INICIAL : '))
    nHoraFinal := VAL(FwInputBox('DIGITE A HORA FINAL : '))
    
    if nHoraFinal < nHoraInicio
        nHoraFinal+= 24
    endif 

    nDuracao := nHoraFinal - nHoraInicio

    FwAlertSuccess('O jogo teve ' + CVALTOCHAR(nDuracao) + ' Hrs de duração.','POKER GAME')

Return 
