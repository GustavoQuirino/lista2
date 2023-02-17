#INCLUDE 'TOTVS.CH'

User Function cadastrauser()
    
    Local cUser   := cPass := cConfirm := ''     //vari�veis para receber dados
    Local nCont   := 0       
    Local cChar   := ''          //vaia�vel para percorrer a String 

    Local lOk     := .F.         //vai�veis de valida�ao 
    Local lOkNum  := .F.         //vai�veis de valida�ao 
    Local lSimbol := .F.         //vai�veis de valida�ao 

    while len(cUser) < 6
        cUser := FwInputBox('DIGITE SEU USERNAME :')
        if len(cUser) < 6                                                          //valida a qtd minima de caracter no username
            Alert('USERNAME PRESCISA TER AO MENOS 6 CARACTERES !')
        endif 
    end
    
    
    while !lOk .AND. !lOkNum .AND. !lSimbol 
        cPass := FwInputBox('DIGITE SUA SENHA ')
        for nCont := 1 to len(cPass)
            cChar := SUBSTR( cPass, nCont, 1)
            if ISDIGIT(cChar) 
                lOkNum := .T.
            elseif ISUPPER( cChar )
                lOk := .T. 
            elseif ASC(cChar) > 31 .AND. ASC(cChar) < 48
                lSimbol := .T.     
            elseif ASC(cChar) > 57 .AND. ASC(cChar) < 65
                lSimbol := .T.                                                 //valida qtd, caracter mai�sculo, n�mero e s�mbolo 
            elseif ASC(cChar) > 90 .AND. ASC(cChar) < 97 
                lSimbol := .T. 
            elseif ASC(cChar) > 122 .AND. ASC(cChar) < 127
                lSimbol := .T.                       
            endif     
        next 
        if len(cPass) < 6 .OR. !lOk .OR. !lOkNum .OR. !lSimbol 
            Alert('SENHA N�O ATENDE OS REQUISITOS !')
            lOk := .F. 
            lOkNum := .F.
            lSimbol := .F.
        endif     
    end   
    
    
    while cConfirm != cPass
        cConfirm := FwInputBox('DIGITE A CONFIRMA��O DA SENHA ')
        if cConfirm != cPass
            Alert('SENHAS N�O COINCIDEM!')                                   //valida a confirma�ao da senha se esta id�ntica 
        endif   
    end

    FwAlertSuccess('USU�RIO CADASTRADO !','SUCESSO')

Return 
