SELECT 
    U.USU_Id,
    U.USU_Nome,
    U.USU_Login,
    U.USU_Senha,
    U.USU_Bloqueado,
    U.USU_DataAcesso,
    P.PER_Id,
    P.PER_Nome,
    S.SIS_ID,
    S.SIS_Nome,
    S.SIS_Link
FROM 
    ADM_Usuario AS U
LEFT JOIN 
    ADM_UsuarioXPerfil AS UP ON U.USU_Id = UP.USP_USU_Id
LEFT JOIN 
    ADM_Perfil AS P ON UP.USP_PER_Id = P.PER_Id
LEFT JOIN 
    ADM_Sistema AS S ON P.PER_SIS_ID = S.SIS_ID;