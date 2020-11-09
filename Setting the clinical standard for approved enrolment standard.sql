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