#INCLUDE 'TOTVS.CH'

User Function cota_dolar()
    Local nReal := nDolar := nQuant := 0

    nDolar := VAL(FwInputBox('DIGITE A COTAÇÃO ATUAL :'))
    nQuant := VAL(FwInputBox('QUAL O VALOR DISPONÍVEL EM DOLARES ?'))
    nReal := nQuant * nDolar 

    FwAlertSuccess('O valor convertido em Reais é : R$ ' + CVALTOCHAR(nReal),'CONVERSÃO')

Return 
