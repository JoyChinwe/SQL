----HOW TO CHANGE YOUR TABLE NAME
  --*** /HOW TO RENAME A TABLE USING SQL Code ***/
  
  exec sp_rename OLD NAME TO NEW NAME
  
  exec sp_rename '[dbo].[staff]', '[dbo].[staff]'

   
   Select top 10
   from [dbo].[staff]