
  --Data Quality identify and corrected before importing of data into SQL server

SELECT [MedRes_id]
      ,[Ctry_Prfx]
      ,[Clnc_id]
      ,[Volntr_id]
      ,[Fshd_Dt]
      ,[Stpd_Trtmt_Dt]
      ,[Drg_Adm_Dt]
      ,[Pre_Termd_Dt]
      ,[Lst_Fol_Dt]
      ,[Regd_Dt]
      ,[Cnst_Aprd_Dt]
      ,[Fal_Scrn_Dt]
      ,[Tru_Scrnd_Dt]
  FROM [master].[dbo].[JC_TrialVolunteers]
  WHERE[Pre_Termd_Dt] IS  NULL