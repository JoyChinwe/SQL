 --CHANGE THE NAME OF THE COLUMUS to align with the business requirement**
 
 FROM [master].[dbo].[JC_TrialVolunteers]
  
  drop table TrialAnalysis_A
   SELECT MedRes_id As Medical_Research_ID
      ,Ctry_Prfx As Country_Prefix
      ,Clnc_id As Clinic_ID
      ,Volntr_id As Voluteer_ID
      ,Fshd_Dt As False_Screen_Date
      ,Stpd_Trtmt_Dt As Stopped_Treatment_Date
      ,Drg_Adm_Dt As Drug_Adminstered_Date
      ,Pre_Termd_Dt As Premature_terminated_Date
      ,Lst_Fol_Dt As Last_Followup_Date
      ,Regd_Dt As Registered_Date
      ,Cnst_Aprd_Dt As Consent_Approved_Date
      ,Fal_Scrn_Dt As Failed_Screen_Date
      ,Tru_Scrnd_Dt As True_Screemed_Date
 Into TrialAnalysis_A
 From JC_TrialVolunteers