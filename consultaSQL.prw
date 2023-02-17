#INCLUDE 'TOTVS.CH'
#INCLUDE 'TBICONN.CH'
#INCLUDE 'TOPCONN.CH'

User Function consultaSQL()

    Local aArea := GetArea()
    Local cAlias := GetNextAlias()
    Local cQuery := ''
    Local cCodigo := '0001'
    Local cDesc := ''

    PREPARE ENVIRONMENT EMPRESA '99' FILIAL '01' TABLES 'SB1' MODULO 'COM'

    cQuery += 'SELECT B1_DESC' + CRLF
    cQuery += ' FROM ' + RetSqlName('SB1') + ' SB1 ' + CRLF
    cQuery += " WHERE B1_COD = '" + cCodigo + "'"

    TCQUERY cQuery ALIAS &(cAlias) NEW 

    while &(cAlias)->(!EOF())
        cDesc := &(cAlias)->(B1_DESC)
        &(cAlias)->(DBSKIP())
    enddo 

    FwAlertInfo(cDesc)

    &(cAlias)->(DBCLOSEAREA())
    RestArea(aArea)

Return 
