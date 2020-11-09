 --Counting the number of qualified voluteers enrollment per study
 drop table TrialAnalysis_C
 select Medical_Research_ID, count(Volunteers) as volunteersCount
 Into TrialAnalysis_C
 from TrialAnalysis_B
 group by Medical_Research_ID

--- displaying the output of the table created above.
 select * from TrialAnalysis_C
 Order by volunteersCount desc