  --Troubleshooting to know why there is a different in the outcome of the data'
  select t1.Card_ID, t2.Card_ID, t1.CardType, t2.CardType, t1.CardLimit , t1.CardBalance,
  t2.CardType, t2.ExpiryMonth, t2.ExpiryYear
  from JC_CardAmount t1
  Left join JC_CardExpiry t2
  on t1.card_id = t2.Card_ID