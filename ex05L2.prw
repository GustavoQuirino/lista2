#INCLUDE 'TOTVS.CH'

User Function cota_dolar()
    Local nReal := nDolar := nQuant := 0

    nDolar := VAL(FwInputBox('DIGITE A COTA��O ATUAL :'))
    nQuant := VAL(FwInputBox('QUAL O VALOR DISPON�VEL EM DOLARES ?'))
    nReal := nQuant * nDolar 

    FwAlertSuccess('O valor convertido em Reais � : R$ ' + CVALTOCHAR(nReal),'CONVERS�O')

Return 
