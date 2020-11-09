  --How to add a financial symbol in you columu
  --How to use CAST in analys
  
  drop table JC_CardBalance_5
  select Card_ID, 'E' + Cast(CardBalance as varchar(20) ) As CardBalance
  into JC_CardBalance_5
  from JC_CardBalance_2

--- displaying the output of the table created above.
  select * from JC_CardBalance_5