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