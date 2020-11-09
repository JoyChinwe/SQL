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