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