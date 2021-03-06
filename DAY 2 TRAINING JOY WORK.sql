
--To check for Null and IS NOT NULL in table

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [MedRes_id]
      ,[Ctry_Prfx]
      ,[Clnc_id]
      ,[Volntr_id]
      ,[Fshd_Dt]
      ,[Stpd_Trtmt_Dt]
      ,[Drg_Adm_Dt]
      ,[Pre_Termd_Dt]
      ,[Lst_Fol_Dt]
      ,[Fal_Scrn_Dt]
  FROM [master].[dbo].[JC_'Volunteers_(Raw)'] 
  where [Pre_Termd_Dt] is not null

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
  
  ----ETL QUESTION.... WHAT IS ETL?******/
  --ETL = 'Extract, Transform and Load'
  --There is also another one called ELT- ( " Extract Load and Transform"). This one is mostly used in a data warehouse project in a staging database.
  --Using the query below, answer the following question:
  --1. At what point in the query, did Extraction occur?
	--2. At what point in the query, did Tranform occur?
	--3, At what point in the query, did Load occur?

	drop table jc_leadlist2
	Select CompanyNumber As PotentialSales, ---Extraction and Transformation
	CompanyName As OrganisationName,
	PostalCode As PostalCode
	Into JC_LeadList2    ------Load 
	From JC_LeadList     -------Extraction

	Select * from JC_LeadList2

----HOW TO CHANGE YOUR TABLE NAME
  --*** /HOW TO RENAME A TABLE USING SQL Code ***/
  
  exec sp_rename OLD NAME TO NEW NAME
  
  exec sp_rename '[dbo].[staff]', '[dbo].[staff]'

   
   Select top 10
   from [dbo].[staff]
 
  /* HOW TO USE SQL CASE STATEMENT IN ANALYSIS*/
  
  --DATA SAMPLE

  select top 10*
  from JC_CardAmount

  select top 10*
  from JC_CardExpiry

  --Join the two table to make one table from analysis

  select t1.Card_ID, t1.CardType, t1.CardLimit, t1.CardBalance,
  t2.Card_ID, t2.CardType, t2.ExpiryMonth, t2.ExpiryYear
  from JC_CardAmount t1
  inner join JC_CardExpiry t2
  on t1.card_id = t2.Card_ID
  And t1.CardType = t2.CardType

select t1.Card_ID, t1.CardType, t1.CardLimit, t1.CardBalance,
  t2.Card_ID, t2.CardType, t2.ExpiryMonth, t2.ExpiryYear
  from JC_CardAmount t1
  Left join JC_CardExpiry t2
  on t1.card_id = t2.Card_ID

  --Troubleshooting to know why there is a different in the outcome of the data'
  select t1.Card_ID, t2.Card_ID, t1.CardType, t2.CardType, t1.CardLimit , t1.CardBalance,
  t2.CardType, t2.ExpiryMonth, t2.ExpiryYear
  from JC_CardAmount t1
  Left join JC_CardExpiry t2
  on t1.card_id = t2.Card_ID

  --How to use case statement



 Drop table JC_CardBalance_1
  
  select t1.Card_ID, t1.CardType, t1.CardLimit, t1.CardBalance,
   t2.ExpiryMonth, t2.ExpiryYear
  into JC_CardBalance_1
  from JC_CardAmount t1
  inner join JC_CardExpiry t2
  on t1.card_id = t2.Card_ID
  And t1.CardType = t2.CardType

  select * from JC_CardBalance_1
 
 
  --HOW TO USE CASE STATEMENT
  
  Drop Table JC_CardBalance_2

  Select Card_ID, CardType, ExpiryMonth,
  case
  when ExpiryMonth = '1' Then 'January'
  when ExpiryMonth = '2' Then 'February'
  when ExpiryMonth = '3' Then 'March'
  when ExpiryMonth = '4' Then 'April'
  when ExpiryMonth = '5' Then 'May'
  when ExpiryMonth = '6' Then 'June'
  When ExpiryMonth = '7' Then 'July'
  when ExpiryMonth = '8' Then 'August'
  when ExpiryMonth = '9' Then 'September'
  when ExpiryMonth = '10' Then 'October'
  when ExpiryMonth = '11' Then 'Novemeber'
  when ExpiryMonth = '12' Then 'Decemeber'
  Else 'Error'
  End As ExpiryMonthName
  into JC_CardBalance_2
  From JC_CardBalance_1

  select * from JC_CardBalance_2
  Order by ExpiryMonth asc

  
  select * from JC_CardBalance_2
  Order by ExpiryMonth desc

  
  select * from JC_CardBalance_2
  Order by ExpiryMonthName asc



  Drop table JC_CardBalance_1
  
  select t1.Card_ID, t1.CardType, t1.CardLimit, t1.CardBalance,
   t2.ExpiryMonth, t2.ExpiryYear
  into JC_CardBalance_1
  from JC_CardAmount t1
  inner join JC_CardExpiry t2
  on t1.card_id = t2.Card_ID
  And t1.CardType = t2.CardType

  select * from JC_CardBalance_1
 
 
  --HOW TO USE CASE STATEMENT
  
  Drop Table JC_CardBalance_2

  Select Card_ID, CardType, ExpiryMonth, CardLimit, CardBalance, ExpiryYear,
  case
  when ExpiryMonth = '1' Then 'January'
  when ExpiryMonth = '2' Then 'February'
  when ExpiryMonth = '3' Then 'March'
  when ExpiryMonth = '4' Then 'April'
  when ExpiryMonth = '5' Then 'May'
  when ExpiryMonth = '6' Then 'June'
  When ExpiryMonth = '7' Then 'July'
  when ExpiryMonth = '8' Then 'August'
  when ExpiryMonth = '9' Then 'September'
  when ExpiryMonth = '10' Then 'October'
  when ExpiryMonth = '11' Then 'Novemeber'
  when ExpiryMonth = '12' Then 'Decemeber'
  Else 'Error'
  End As ExpiryMonthName
  into JC_CardBalance_2
  From JC_CardBalance_1

  select * from JC_CardBalance_2
  Order by ExpiryMonth desc

  /** To display how many cards to expired in each year**/
  drop table JC_CardBalance_3
  select ExpiryYear, count (CardType) as CardType_count
  Into JC_CardBalance_3
  From JC_CardBalance_2
  Group by ExpiryYear

  --- displaying the output of the table created above.
  select * from JC_CardBalance_3
  
  --How many card per card type
  drop table JC_CardBalance_4
  select CardType, count(CardType) as CardType_count
  Into JC_CardBalance_4
  From JC_CardBalance_2
  Group by CardType

  --- displaying the output of the table created above.
  select * from JC_CardBalance_4

  --How to add a financial symbol in you columu
  --How to use CAST in analys
  
  drop table JC_CardBalance_5
  select Card_ID, 'E' + Cast(CardBalance as varchar(20) ) As CardBalance
  into JC_CardBalance_5
  from JC_CardBalance_2

--- displaying the output of the table created above.
  select * from JC_CardBalance_5

  --**Qualified Trial Screening Analysis. **/
  --Data Sample

  select top 10 *
  from JC_TrialStatus
  Order by 1,2,3

  select top 10 *
  from JC_TrialVolunteers
  order by 1,2,3
 
 


  --Doing Row count to know the number of data received.

  select count(*) as #RowCount
  from JC_TrialStatus

  select count(*) as #RowCount
  from JC_TrialVolunteers

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

 --- displaying the output of the table created above.
 select * from TrialAnalysis_A


 --First of all we must transform the columu names to be understandable for this analysis
 
 ----CHANGE THE NAME OF THE COLUMUS to align with the business requirement**
 
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
 
 --- displaying the output of the table created above.
 select * from TrialAnalysis_A
  
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

--- displaying the output of the table created above.
Select * from TrialAnalysis_A




--Setting the clinical standard for approved enrollment standard
Drop table TrialAnalysis_B
 select Medical_Research_ID,
 Case
 when Registered_Date is not null
 Or Drug_Adminstered_Date is not null
 or Premature_terminated_Date is not null
 or Stopped_Treatment_Date is not null
 or False_Screen_Date is not null
 or Voluteer_ID  IN ('Premature', 'Terminated', 'False Screen')
 Then 1
 Else 0
 End As volunteers
  into TrialAnalysis_B
 From TrialAnalysis_A

 --- displaying the output of the table created above.
 select * from TrialAnalysis_B

 --Counting the number of qualified voluteers enrollment per study
 drop table TrialAnalysis_C
 select Medical_Research_ID, count(Volunteers) as volunteersCount
 Into TrialAnalysis_C
 from TrialAnalysis_B
 group by Medical_Research_ID

--- displaying the output of the table created above.
 select * from TrialAnalysis_C
 Order by volunteersCount desc


 --Giving threshold value to the clinical trial volunteers
 DROP TABLE TrialAnalysis_D
 select Medical_Research_ID,
 Case
 when volunteersCount >= 2000 Then 'Target A'
 when volunteersCount >= 1000 Then 'Target B'
 when volunteersCount >= 500 Then 'Target C'
 when volunteersCount >= 400 Then 'Target Unreached A'
 when volunteersCount >= 300 Then 'Target  Unreached B'
 Else 'Target Unreached c'
 End As volunteerThreshold 
 Into TrialAnalysis_D
 FROM TrialAnalysis_C

 select * from TrialAnalysis_D
 order by volunteerThreshold

 --Counting the number of qualified studies
 drop table Trial_Qualifiedstudy
 Select VolunteerThreshold, count (VolunteerThreshold) as Qualified_Study
 into Trial_Qualifiedstudy3
 From TrialAnalysis_D
 Group by volunteerThreshold
   
 select * from Trial_Qualifiedstudy3
 Order by Qualified_Study desc


  










