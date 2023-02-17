#INCLUDE 'TOTVS.CH'

User Function game()
    
    Local nNum := 0
    Local nChute := 0
    Local nTent := 0
    Local lAcerto := .F. 

    nNum := RANDOMIZE( 0, 100 )

    while !lAcerto
        nChute := VAL(FwInputBox('ADIVINHE O N�MERO DA SORTE ? '))

        if nChute > nNum
            FwAlertError('O N�MERO DA SORTE � MENOR !')
            nTent++
        elseif nChute <  nNum 
            FwAlertError('O N�MERO DA SORTE � MAIOR !') 
            nTent++ 
        elseif nChute == nNum
            lAcerto := .T.
            nTent++
        endif     
    end  

    if nTent <= 5
        FwAlertSuccess('VOC� � MUITO BOM, ACERTOU EM ' + CVALTOCHAR(nTent) + ' TENTATIVAS .', 'PARAB�NS ! ')
    elseif nTent > 5 .AND. nTent < 9 
        FwAlertSuccess('VOC� � BOM, ACERTOU EM ' + CVALTOCHAR(nTent) + ' TENTATIVAS .', 'PARAB�NS ! ')
    elseif nTent >= 9 .AND. nTent < 13 
        FwAlertSuccess('VOC� � MEDIANO, ACERTOU EM ' + CVALTOCHAR(nTent) + ' TENTATIVAS .', 'UFA ! ') 
    elseif nTent >= 13 
        FwAlertError('VOC� � MUITO FRACO, ACERTOU EM ' + CVALTOCHAR(nTent) + ' TENTATIVAS .', 'QUE PENA ! ') 
    endif                

Return 
