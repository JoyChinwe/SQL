  /** To display how many cards to expired in each year**/
  drop table JC_CardBalance_3
  select ExpiryYear, count (CardType) as CardType_count
  Into JC_CardBalance_3
  From JC_CardBalance_2
  Group by ExpiryYear

  --- displaying the output of the table created above.
  select * from JC_CardBalance_3