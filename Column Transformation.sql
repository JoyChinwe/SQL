   --Coloum Transformation
  drop table TrialAnalysis_A
   SELECT MedRes_id As Medical_Research_ID
      ,Ctry_Prfx As Country_Prefix
      ,Clnc_id As Clinic_ID
      ,Volntr_id As Voluteer_ID
      ,Cast(Fshd_Dt As Date) As False_Screen_Date
      ,Cast(Stpd_Trtmt_Dt As Date) As Stopped_Treatment_Date
      ,Cast(Drg_Adm_Dt As Date) As Drug_Adminstered_Date
      ,Cast(Pre_Termd_Dt As Date) As Premature_terminated_Date
      ,Cast(Lst_Fol_Dt As Date) As Last_Followup_Date
      ,Cast(Regd_Dt As Date) As Registered_Date
      ,Cast(Cnst_Aprd_Dt As Date) As Consent_Approved_Date
      ,Cast(Fal_Scrn_Dt As Date) As Failed_Screen_Date
      ,Cast(Tru_Scrnd_Dt As Date) As True_Screemed_Date
into TrialAnalysis_A
From JC_TrialVolunteers TV