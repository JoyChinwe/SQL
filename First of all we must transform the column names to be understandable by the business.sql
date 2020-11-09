  ----First of all we must transform the columu names to be understandable by the business
   --Table Join Inner.

  SELECT  TV.MedRes_id As Medical_Research_ID
      ,TV.Ctry_Prfx As Country_Prefix
      ,TV.Clnc_id As Clinic_ID
      ,TV.Volntr_id As Voluteer_ID
      ,TV.Fshd_Dt As False_Screen_Date
      ,TV.Stpd_Trtmt_Dt As Stopped_Treatment_Date
      ,TV.Drg_Adm_Dt As Drug_Adminstered_Date
      ,TV.Pre_Termd_Dt As Premature_terminated_Date
      ,TV.Lst_Fol_Dt As Last_Followup_Date
      ,TV.Regd_Dt As Registered_Date
      ,TV.Cnst_Aprd_Dt As Consent_Approved_Date
      ,TV.Fal_Scrn_Dt As Failed_Screen_Date
      ,TV.Tru_Scrnd_Dt As True_Screemed_Date
	  ,TS.Volntr_Sts As Volunteer_Status
	  ,TS.Trtmt_Drpd_Dt As Treatment_Dropped_Date
	  ,TS.Tr_Drp_Dt As Trial_Dropped_Date
 From JC_TrialVolunteers TV
 Inner join JC_TrialStatus TS
 ON TV.MedRes_id = TS.MedRes_id
 And TV.Ctry_Prfx = TS.Ctry_Prfx
 And TV.Clnc_id = TS.Clnc_id