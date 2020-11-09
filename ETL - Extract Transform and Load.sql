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