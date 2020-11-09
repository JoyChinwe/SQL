  --How many card per card type
  drop table JC_CardBalance_4
  select CardType, count(CardType) as CardType_count
  Into JC_CardBalance_4
  From JC_CardBalance_2
  Group by CardType

  --- displaying the output of the table created above.
  select * from JC_CardBalance_4