#INCLUDE 'TOTVS.CH'
#INCLUDE 'TBICONN.CH'

User Function busprod()
    
    Local aArea := GetArea()
    Local cCodigo := '0001'
    Local cDesc := ''

    PREPARE ENVIRONMENT EMPRESA '99' FILIAL '01' TABLES 'SB1' MODULO 'COM'

    DBSELECTAREA('SB1')
    DBSETORDER( 1 )
    DBSEEK(xFilial('SB1') + cCodigo )

    cDesc := SB1->B1_DESC

    FwAlertInfo('Codigo : ' + cCodigo + CRLF + 'DESCRIÇÃO : ' + cDesc ,'PRODUTO')

    DBCLOSEAREA()
    RestArea(aArea)

Return 
