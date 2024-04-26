SELECT 
    U.USU_Id as 'Id Usuario',
    U.USU_Nome as 'Nome Usuario',
    U.USU_Login as 'Login Usuario',
    U.USU_Senha as 'Senha Usuario',
    U.USU_Bloqueado as 'Usuario Bloqueado',
    U.USU_DataAcesso as 'Data Acesso Usuario',
    E.ENT_Id as 'Id Entidade',
    E.ENT_Nome as 'Nome Entidade',
    E.ENT_Responsavel as 'Responsavel Entidade',
    E.ENT_TerminalPrefixo as 'Terminal Prefixo Entidade',
    P.PER_Id as 'Id Perfil',
    P.PER_Nome as 'Nome Perfil',
    S.SIS_ID as 'Id Sistema',
    S.SIS_Nome as 'Nome Sistema',
    S.SIS_Link as 'Sistema Link'
FROM 
    ADM_Usuario AS U
LEFT JOIN 
    ADM_UsuarioXPerfil AS UP ON U.USU_Id = UP.USP_USU_Id
LEFT JOIN 
    ADM_Perfil AS P ON UP.USP_PER_Id = P.PER_Id
LEFT JOIN 
    ADM_Sistema AS S ON P.PER_SIS_ID = S.SIS_ID
LEFT JOIN 
    ADM_Entidade AS E ON U.USU_ENT_Id = E.ENT_Id;
