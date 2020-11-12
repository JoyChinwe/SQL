-- =============================================  
-- Author:      Joy Chinwe   
-- =============================================
--Store procedure name is --> stpGetAllMembers  
CREATE PROCEDURE stpGetAllMembers  
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
  
    -- Select statements for procedure here  
    Select * from tblMembers  
END  
GO