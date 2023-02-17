#INCLUDE 'TOTVS.CH'
#DEFINE user 'GUSTAVO'
#DEFINE password 1234

User Function login()
    Local cUser := ''
    Local nSenha := 0
    Local nVerif := 0

    cUser := UPPER(FwInputBox('DIGITE O USERNAME :'))
    nSenha := VAL(FwInputBox('DIGITE A SENHA :'))

    if cUser == user 
        nVerif++
    endif 

    if nSenha == password
        nVerif++
    endif 

    if nVerif > 1
        FwAlertSuccess('LOGIN REALIZADO COM SUCESSO ! ', "LOGIN")
    else 
        FwAlertError('LOGIN INVALIDO ! ', 'LOGIN')
    endif                 

Return 
