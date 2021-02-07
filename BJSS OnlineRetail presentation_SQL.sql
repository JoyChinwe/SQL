/****To know the number of Rows****/

select count(*) from JC_OnlineRetail

select Top 10 * from JC_OnlineRetail

/***Transformation using ETL Processing****/ 

drop tableJC_onlineRetail_2
select *
,datepart (mm, InvoiceDate) as Trans_month
,datepart (yyyy, InvoiceDate) as Trans_year
,datepart (dd, InvoiceDate) as Trans_day
,datepart (wk, InvoiceDate) as Trans_week
into JC_OnlineRetail_2
from JC_OnlineRetail

select * from JC_OnlineRetail_2

select *
,Case   
     when Trans_month =1 then 'Jan'
	 When Trans_month =12 then 'DEC'
	 else 'error' 
	 end as Trans_Month_Grouping

into JC_OnlineRetail_3
from JC_OnlineRetail_2

select * from JC_OnlineRetail_3

Alter table JC_OnlineRetail_3
ALTER COLUMN [StockCode] varchar(50)

Alter table JC_OnlineRetail_3
ALTER COLUMN [Customer ID] varchar(50)

drop table JC_OnlineRetail_4
select *
,Case
     when StockCode is Null then 'Unknown'
	 else StockCode 
	 end as StockCode_2 
	 ,Case  when [Customer ID] is Null then 'Unknown'
	 else [Customer ID]
	 end as CustomerID_2
into JC_OnlineRetail_4
from JC_OnlineRetail_3
 

select * from JC_OnlineRetail_4

select @@servername as usename

select [StockCode],[Customer ID]
from JC_OnlineRetail_3
where StockCode  is Null and [Customer ID]  is Null