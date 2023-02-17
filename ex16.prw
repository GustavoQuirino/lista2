#INCLUDE 'TOTVS.CH'

User Function cadastrauser()
    
    Local cUser   := cPass := cConfirm := ''     //variáveis para receber dados
    Local nCont   := 0       
    Local cChar   := ''          //vaiaável para percorrer a String 

    Local lOk     := .F.         //vaiáveis de validaçao 
    Local lOkNum  := .F.         //vaiáveis de validaçao 
    Local lSimbol := .F.         //vaiáveis de validaçao 

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
                lSimbol := .T.                                                 //valida qtd, caracter maiúsculo, número e símbolo 
            elseif ASC(cChar) > 90 .AND. ASC(cChar) < 97 
                lSimbol := .T. 
            elseif ASC(cChar) > 122 .AND. ASC(cChar) < 127
                lSimbol := .T.                       
            endif     
        next 
        if len(cPass) < 6 .OR. !lOk .OR. !lOkNum .OR. !lSimbol 
            Alert('SENHA NÃO ATENDE OS REQUISITOS !')
            lOk := .F. 
            lOkNum := .F.
            lSimbol := .F.
        endif     
    end   
    
    
    while cConfirm != cPass
        cConfirm := FwInputBox('DIGITE A CONFIRMAÇÃO DA SENHA ')
        if cConfirm != cPass
            Alert('SENHAS NÃO COINCIDEM!')                                   //valida a confirmaçao da senha se esta idêntica 
        endif   
    end

    FwAlertSuccess('USUÁRIO CADASTRADO !','SUCESSO')

Return 
