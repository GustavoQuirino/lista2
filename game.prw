#INCLUDE 'TOTVS.CH'

User Function game()
    
    Local nNum := 0
    Local nChute := 0
    Local nTent := 0
    Local lAcerto := .F. 

    nNum := RANDOMIZE( 0, 100 )

    while !lAcerto
        nChute := VAL(FwInputBox('ADIVINHE O NÚMERO DA SORTE ? '))

        if nChute > nNum
            FwAlertError('O NÚMERO DA SORTE É MENOR !')
            nTent++
        elseif nChute <  nNum 
            FwAlertError('O NÚMERO DA SORTE É MAIOR !') 
            nTent++ 
        elseif nChute == nNum
            lAcerto := .T.
            nTent++
        endif     
    end  

    if nTent <= 5
        FwAlertSuccess('VOCÊ É MUITO BOM, ACERTOU EM ' + CVALTOCHAR(nTent) + ' TENTATIVAS .', 'PARABÉNS ! ')
    elseif nTent > 5 .AND. nTent < 9 
        FwAlertSuccess('VOCÊ É BOM, ACERTOU EM ' + CVALTOCHAR(nTent) + ' TENTATIVAS .', 'PARABÉNS ! ')
    elseif nTent >= 9 .AND. nTent < 13 
        FwAlertSuccess('VOCÊ É MEDIANO, ACERTOU EM ' + CVALTOCHAR(nTent) + ' TENTATIVAS .', 'UFA ! ') 
    elseif nTent >= 13 
        FwAlertError('VOCÊ É MUITO FRACO, ACERTOU EM ' + CVALTOCHAR(nTent) + ' TENTATIVAS .', 'QUE PENA ! ') 
    endif                

Return 
