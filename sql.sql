
------------1-stored procedures for each table(insert,delete,update)-------- 
------1.1 demografics insert
CREATE PROCEDURE insertintodemographics

 @CustomerID varchar(50),
           @Count varchar(50),
           @Gender varchar(50),
           @Age varchar(50),
           @Under30 varchar(50),
           @SeniorCitizen varchar(10),
           @Married varchar(10),
           @Dependents varchar(50),
           @NumberofDependents varchar(50),
		   @Msg nvarchar(MAX)=null OUTPUT

AS
BEGIN TRY
INSERT INTO demographics
           ([Customer ID]
           ,[Count]
           ,[Gender]
           ,[Age]
           ,[Under 30]
           ,[Senior Citizen]
           ,[Married]
           ,[Dependents]
           ,[Number of Dependents])
     VALUES
	 ( 
	  @CustomerID,
           @Count ,
           @Gender,
           @Age ,
           @Under30 ,
           @SeniorCitizen ,
           @Married ,
           @Dependents ,
           @NumberofDependents )
           
    SET @Msg='Table Detail Saved Successfully.'

END TRY
BEGIN CATCH

    SET @Msg=ERROR_MESSAGE()
	end catch
	insertintodemographics 'jksfhaf','1','m','23','yes','no','yes','no','0'

	select * from demographics where [Customer ID]='jksfhaf'

--------1.2 demographics update 

		CREATE PROCEDURE UpdateDemographics

@CustomerID varchar(50),
           @Count varchar(50),
           @Gender varchar(50),
           @Age varchar(50),
           @Under30 varchar(50),
           @SeniorCitizen varchar(10),
           @Married varchar(10),
           @Dependents varchar(50),
           @NumberofDependents varchar(50)
AS
BEGIN
UPDATE demographics 
SET [Customer ID]=@CustomerID ,
      [Count]=@Count ,
      [Gender]=@Gender ,
      [Age] = @age 
      ,[Under 30] = @Under30 
      ,[Senior Citizen] = @SeniorCitizen 
      ,[Married] =  @Married 
      ,[Dependents] =  @Dependents 
      ,[Number of Dependents] =  @NumberofDependents
WHERE [Customer ID]=@CustomerID
END

--------1.3 demographics delete 

CREATE PROCEDURE deletefromDEMO
@CustomerID varchar(50)
as
begin delete from demographics
where [Customer ID]=@CustomerID
end
	
	
---------1.4 location insert

	CREATE PROCEDURE insertintoloc

 @CustomerID varchar(50),
           @Count varchar(50),
          @Country varchar(50),
           @State varchar(50),
          @City varchar(50),
           @Zip_Code varchar(50),
           @Lat_Long varchar(50),
           @Latitude varchar(50),
           @Longitude varchar(50),
		   @Msg nvarchar(MAX)=null OUTPUT

AS
BEGIN TRY
INSERT INTO location
           ([Customer ID]
           ,[Count]
           ,[Country]
           ,[State]
           ,[City]
           ,[Zip_Code]
           ,[Lat Long]
           ,[Latitude]
           ,[Longitude])
     VALUES
	 ( @CustomerID ,
           @Count,
          @Country ,
           @State ,
          @City ,
           @Zip_Code ,
           @Lat_Long ,
           @Latitude ,
           @Longitude )
           
    SET @Msg='Table Detail Saved Successfully.'

END TRY
BEGIN CATCH

    SET @Msg=ERROR_MESSAGE()
	end catch


---------1.5 location update

CREATE PROCEDURE UpdateLocation

@CustomerID varchar(50),
           @Count varchar(50),
           @country varchar(50),
           @state varchar(50),
           @city varchar(50),
           @zip_code varchar(50),
           @lat_long varchar(50),
           @latitude varchar(50),
           @longitude varchar(50)
AS
BEGIN
UPDATE location
SET [Customer ID]=@CustomerID ,
      [Count]=@Count ,
      [Country]=@country,
	  [State]=@state,
	  City=@city,
	  Zip_Code=@zip_code,
	  [Lat Long]=@lat_long,
	  Latitude=@latitude,
	  Longitude=@longitude

WHERE [Customer ID]=@CustomerID
END

-------------1.6 location delete 

CREATE PROCEDURE deletefromLocation
@CustomerID varchar(50)
as
begin delete from location
where [Customer ID]=@CustomerID
end
	
--------------1.7 population insert

	CREATE PROCEDURE insertintoPopu

 @ID varchar(50),
 @Zip_Code varchar(50) ,
 @Population varchar(50),
 @Msg nvarchar(MAX)=null OUTPUT

AS
BEGIN TRY
INSERT INTO population
           ([ID]
           ,[Zip_Code]
           ,[Population])
     VALUES
	 ( @ID,@Zip_Code,@Population )
           
    SET @Msg='Table Detail Saved Successfully.'

END TRY
BEGIN CATCH

    SET @Msg=ERROR_MESSAGE()
	end catch

--------1.8 population update

	CREATE PROCEDURE UpdatePopulation
	@ID varchar(50),
 @Zip_Code varchar(50) ,
 @Population varchar(50)
AS
BEGIN
UPDATE population
SET ID=@ID,
Zip_Code=@Zip_Code
, Population=@PopulationDESKTOP-CQ0RI07

WHERE Zip_Code=@Zip_Code
END

------1.9 population delete

CREATE PROCEDURE deletefromPopulation
@Zip_code varchar(50)
as
begin delete from population
where Zip_Code=@Zip_code
end

-----1.10 services insert 

CREATE PROCEDURE insertintoServi 

 @CustomerID varchar(50)
          ,@Count varchar(50)
          ,@Quarter varchar(50)
          ,@Referred_a_Friend varchar(50)
          ,@Number_of_Referrals varchar(50)
          ,@Tenure_in_Months varchar(50)
           ,@Offer varchar(50)
          , @Phone_Service varchar(50),
          @Avg_Monthly_Long_Distance_Charges varchar(50),
          @Multiple_Lines varchar(50),
           @Internet_Service varchar(50),
           @Internet_Type varchar(50)
           ,@Avg_Monthly_GB_Download varchar(50)
           ,@Online_Security varchar(50)
           ,@Online_Backup varchar(50)
           ,@Device_Protection_Plan varchar(50)
           ,@Premium_Tech_Support varchar(50)
           ,@Streaming_TV varchar(50)
           ,@Streaming_Movies varchar(50)
           ,@Streaming_Music varchar(50)
           ,@Unlimited_Data varchar(50)
           ,@Contract varchar(50)
           ,@Paperless_Billing varchar(50)
           ,@Payment_Method varchar(50)
           ,@Monthly_Charge varchar(50)
           ,@Total_Charges varchar(50)
           ,@Total_Refunds varchar(50)
           ,@Total_Extra_Data_Charges varchar(50)
           ,@Total_Long_Distance_Charges varchar(50)
           ,@Total_Revenue varchar(50),
		   @Msg nvarchar(MAX)=null OUTPUT

AS
BEGIN TRY
INSERT INTO services
           ([Customer ID]
           ,[Count]
           ,[Quarter]
           ,[Referred a Friend]
           ,[Number of Referrals]
           ,[Tenure in Months]
           ,[Offer]
           ,[Phone Service]
           ,[Avg Monthly Long Distance Charges]
           ,[Multiple Lines]
           ,[Internet Service]
           ,[Internet Type]
           ,[Avg Monthly GB Download]
           ,[Online Security]
           ,[Online Backup]
           ,[Device Protection Plan]
           ,[Premium Tech Support]
           ,[Streaming TV]
           ,[Streaming Movies]
           ,[Streaming Music]
           ,[Unlimited Data]
           ,[Contract]
           ,[Paperless Billing]
           ,[Payment Method]
           ,[Monthly Charge]
           ,[Total Charges]
           ,[Total Refunds]
           ,[Total Extra Data Charges]
           ,[Total Long Distance Charges]
           ,[Total Revenue])
     VALUES
	 ( @CustomerID 
          ,@Count 
          ,@Quarter 
          ,@Referred_a_Friend 
          ,@Number_of_Referrals 
          ,@Tenure_in_Months 
           ,@Offer 
          , @Phone_Service ,
          @Avg_Monthly_Long_Distance_Charges ,
          @Multiple_Lines ,
           @Internet_Service ,
           @Internet_Type 
           ,@Avg_Monthly_GB_Download 
           ,@Online_Security 
           ,@Online_Backup 
           ,@Device_Protection_Plan 
           ,@Premium_Tech_Support 
           ,@Streaming_TV 
           ,@Streaming_Movies 
           ,@Streaming_Music 
           ,@Unlimited_Data 
           ,@Contract 
           ,@Paperless_Billing 
           ,@Payment_Method 
           ,@Monthly_Charge 
           ,@Total_Charges 
           ,@Total_Refunds 
           ,@Total_Extra_Data_Charges 
           ,@Total_Long_Distance_Charges 
           ,@Total_Revenue )
           
    SET @Msg='Table Detail Saved Successfully.'

END TRY
BEGIN CATCH

    SET @Msg=ERROR_MESSAGE()
	end catch
	
--------1.11 servies update 

	CREATE PROCEDURE UpdateServices
	 @CustomerID varchar(50)
          ,@Count varchar(50)
          ,@Quarter varchar(50)
          ,@Referred_a_Friend varchar(50)
          ,@Number_of_Referrals varchar(50)
          ,@Tenure_in_Months varchar(50)
           ,@Offer varchar(50)
          , @Phone_Service varchar(50),
          @Avg_Monthly_Long_Distance_Charges varchar(50),
          @Multiple_Lines varchar(50),
           @Internet_Service varchar(50),
           @Internet_Type varchar(50)
           ,@Avg_Monthly_GB_Download varchar(50)
           ,@Online_Security varchar(50)
           ,@Online_Backup varchar(50)
           ,@Device_Protection_Plan varchar(50)
           ,@Premium_Tech_Support varchar(50)
           ,@Streaming_TV varchar(50)
           ,@Streaming_Movies varchar(50)
           ,@Streaming_Music varchar(50)
           ,@Unlimited_Data varchar(50)
           ,@Contract varchar(50)
           ,@Paperless_Billing varchar(50)
           ,@Payment_Method varchar(50)
           ,@Monthly_Charge varchar(50)
           ,@Total_Charges varchar(50)
           ,@Total_Refunds varchar(50)
           ,@Total_Extra_Data_Charges varchar(50)
           ,@Total_Long_Distance_Charges varchar(50)
           ,@Total_Revenue varchar(50)
AS
BEGIN
UPDATE services
SET [Customer ID]=@CustomerID
           ,[Count]=@Count
           ,[Quarter]=@Quarter
           ,[Referred a Friend]=@Referred_a_Friend
           ,[Number of Referrals]=@Number_of_Referrals
           ,[Tenure in Months]=@Tenure_in_Months
           ,[Offer]=@Offer
           ,[Phone Service]=@Phone_Service
           ,[Avg Monthly Long Distance Charges]=@Avg_Monthly_Long_Distance_Charges
           ,[Multiple Lines]=@Multiple_Lines
           ,[Internet Service]=@Internet_Service
           ,[Internet Type]=@Internet_Type
           ,[Avg Monthly GB Download]=@Avg_Monthly_GB_Download
           ,[Online Security]=@Online_Security
           ,[Online Backup]=@Online_Backup
           ,[Device Protection Plan]=@Device_Protection_Plan
           ,[Premium Tech Support]=@Premium_Tech_Support
           ,[Streaming TV]=@Streaming_TV
           ,[Streaming Movies]=@Streaming_Movies
           ,[Streaming Music]=@Streaming_Music
           ,[Unlimited Data]=@Unlimited_Data
           ,[Contract]=@Contract
           ,[Paperless Billing]=@Paperless_Billing
           ,[Payment Method]=@Payment_Method
           ,[Monthly Charge]=@Monthly_Charge
           ,[Total Charges]=@Total_Charges
           ,[Total Refunds]=@Total_Refunds
           ,[Total Extra Data Charges]=@Total_Extra_Data_Charges
           ,[Total Long Distance Charges]=@Total_Long_Distance_Charges
           ,[Total Revenue]=@Total_Revenue

WHERE [Customer ID]=@CustomerID
END

------1.12 services delete 

CREATE PROCEDURE deletefromServices
 @CustomerID varchar(50)
as
begin delete from services
where [Customer ID]=@CustomerID
end





----------1.13 stutus insert 

	alter PROCEDURE insertintoStatus

 @Customer_ID varchar(50),
 @Count varchar(50),
           @Quarter varchar(50)
           ,@Satisfaction_Score varchar(50)
           ,@Churn_Score varchar(50)
           ,@CLTV varchar(50)
           ,@Churn_Category varchar(50)
           ,@Churn_Reason varchar(50)
           ,@status_id int,
 @Msg nvarchar(MAX)=null OUTPUT

AS
BEGIN TRY
INSERT INTO status
           ([Customer ID]
           ,[Count]
           ,[Quarter]
           ,[Satisfaction Score]
           ,[Customer Status]
           ,[Churn Label]
           ,[Churn Value]
           ,[Churn Score]
           ,[CLTV]
           ,[Churn Category]
           ,[Churn Reason]
           ,[status_id])
     VALUES
	 (
 @Customer_ID ,
 @Count ,
           @Quarter 
           ,@Satisfaction_Score 
           ,'Joined' 
           ,'No'
           ,0
           ,@Churn_Score 
           ,@CLTV 
           ,@Churn_Category 
           ,@Churn_Reason 
           ,@status_id  )
           
    SET @Msg='Table Detail Saved Successfully.'

END TRY
BEGIN CATCH

    SET @Msg=ERROR_MESSAGE()
	end catch
	

--------1.14 status update 

	CREATE PROCEDURE UpdateStatus
	 @Customer_ID varchar(50),
 @Count varchar(50),
           @Quarter varchar(50)
           ,@Satisfaction_Score varchar(50)
           ,@Customer_Status varchar(50)
           ,@Churn_Label varchar(50)
           ,@Churn_Value varchar(50)
           ,@Churn_Score varchar(50)
           ,@CLTV varchar(50)
           ,@Churn_Category varchar(50)
           ,@Churn_Reason varchar(50)
           ,@status_id int
AS
BEGIN
UPDATE status
SET [Customer ID]=@Customer_ID
           ,[Count]=@Count
           ,[Quarter]=@Quarter
           ,[Satisfaction Score]=@Satisfaction_Score
           ,[Customer Status]=@Customer_Status
           ,[Churn Label]=@Churn_Label
           ,[Churn Value]=@Churn_Value
           ,[Churn Score]=@Churn_Score
           ,[CLTV]=@CLTV
           ,[Churn Category]=@Churn_Category
           ,[Churn Reason]=@Churn_Reason
           ,[status_id]=@status_id
WHERE [Customer ID]=@Customer_ID
END

------1.15 status delete 
CREATE PROCEDURE deletefromStatus
@Customer_ID varchar(50)
as
begin delete from status
where [Customer ID]=@Customer_ID
end

----------------------------------------------------------------------------------------------
-----------------2-Reports ------------------
	
-----2.1 Number of customers in each city 

 create  view num_of_cust_per_city
 as 
 select*, ROW_NUMBER()over(order by [ number of customers per city]desc)as rn from(
 select  distinct count(d.Count)OVER(PARTITION BY city )as[ number of customers per city]
 ,city
 from location l , demographics d
 where l.[Customer ID]=d.[Customer ID]) as newtable


 select * from num_of_cust_per_city where rn=2

-----2.2 services for customers with satisfied score (4,5)

create function top_satisfingscore (@sat int)
 returns table 
 as
 return (

 select st.[Customer ID],st.[Satisfaction Score],s.[Internet Service],s.[Device Protection Plan]
 ,s.[Multiple Lines],s.[Online Backup],s.[Online Security],s.[Paperless Billing],s.[Phone Service],
 s.[Premium Tech Support],s.[Streaming Movies],s.[Streaming Music],s.[Streaming TV],s.[Unlimited Data]
 from status st ,services s
 where s.[Customer ID]=st.[Customer ID] and [Satisfaction Score]>=4 and @sat=[Satisfaction Score])

 select * from top_satisfingscore(5)

 -----2.3  Top 3 reasons churn customers mention it 

 create view  most_NumOfchurn_reson
as(

select* ,DENSE_RANK()over(order by [NumOfchurn reson]desc)as dn 
from (
select s.[Customer ID],[Churn Reason],
count(s.[Customer ID])OVER(PARTITION BY[Churn Reason] ) as [NumOfchurn reson]
from status s where [Churn Label]='yes' ) as newtable )

select * from most_NumOfchurn_reson where dn<=3 

 -----2.4 some information for customer with the highest Customer Lifetime Value

 CREATE view  vip_customer
as(

select d.*,s.CLTV , dense_rank ()over(order by CLTV  desc)as dn
from demographics d,status s 
where d.[Customer ID]=s.[Customer ID])

select * from vip_customer where dn<=3

-----2.5 churn reason  in each city
create view chu_for_each_city
as
select distinct City ,[churn reason]
from location l,status s
where l.[Customer ID]=s.[Customer ID] and [Churn Label]='yes'

 select * from chu_for_each_city where city = 'Los Angeles'

-----2.6  Customers who are not subscribed to free services in each sity
CREATE function nofreeservices (@city varchar(50))
 returns table 
 as
 return (select* from 
(select d.[Customer ID],l.City,s.[Streaming Movies],s.[Streaming Music],s.[Streaming TV],[Churn Label]
from demographics d, services s ,status st,location l
where [Streaming Movies]='no' and [Streaming Music]='no' and [Streaming TV]='no'
and  [Churn Label]='no' and d.[Customer ID]=s.[Customer ID] and d.[Customer ID]=st.[Customer ID]
and d.[Customer ID]=l.[Customer ID] ) as newt
where newt.city=@city)

 select * from nofreeservices('Los Angeles')


-----2.7  the offers received by customers who made referrals for more than 5 customer
CREATE view offer_of_referrals 
as
(select* , DENSE_RANK()over( partition by offer order by[total number of ref by that number ]desc )as dn 
from(
 select s.[Customer ID],s.[Number of Referrals],s.Offer
 ,count(Count)OVER(PARTITION BY [number of referrals]) as [total number of ref by that number ]
 from services s 

 where Offer not in ('none') and [Number of Referrals]>=5)as newtable)

 select * from offer_of_referrals where dn=1

-----2.8  the most types of internet for churn customer in each city 

CREATE function churn_based_on_internettype (@city varchar(50))
 returns table 
 as
 return (select*,dense_rank() over (   order by [Internet Type]desc)as dr
 from (
 select s.[Customer ID],s.[Internet Type] ,l.City,st.[Churn Label],
 count(s.Count)OVER(PARTITION BY city) as [total  ] 
 from services s, status st,location l
 where s.[Customer ID]=st.[Customer ID] and s.[Customer ID]=l.[Customer ID]and 
 [Churn Label]='yes' and [Internet Type]not in ('none')
 )as newtable
 where newtable.City=@city )

 select * from churn_based_on_internettype('Los Angeles') where dr=1


 -----2.9 Number of churn customers in each city and details
 
ALTER PROC CHURNINCITY
AS
SELECT *, DENSE_RANK()OVER (ORDER BY  [NUMBER PER CITY]DESC )AS RN FROM(
select   (l.City) , D.[Customer ID],
COUNT (D.[Customer ID] )OVER(PARTITION BY l.City ) AS [NUMBER PER CITY]
from demographics d , location l , status s 
where l.[Customer ID] = d.[Customer ID] and d.[Customer ID] = s.[Customer ID]
and [Churn Label] = 'yes'  ) AS NEWTABLE

 execute CHURNINCITY

 -----2.10 cities with bad network reason 

 alter VIEW BAD_NETWORK 
  AS
  SELECT *,ROW_NUMBER()OVER (ORDER BY CHURNREASOM DESC)AS RN FROM (
  select COUNT (s.Count)OVER (PARTITION BY s.[Churn Reason] ORDER BY s.[Churn Reason]) AS CHURNREASOM
  ,
  s.[Churn Reason] , (l.City)
from demographics d , location l , status s 
where l.[Customer ID] = d.[Customer ID] and 
d.[Customer ID] = s.[Customer ID] AND s.[Churn Reason]= 'Network reliability') AS ANEWOTABLE

 SELECT * FROM BAD_NETWORK WHERE RN =2


 -----2.11  which contract has the highest churn

 ALTER VIEW MOSTCHURN 
 AS 
 SELECT *,DENSE_RANK()OVER (ORDER BY CONTRACTCHURN desc)	AS RN FROM (
 SELECT ST.[Customer ID] ,COUNT (s.Count)OVER (PARTITION BY Contract ) AS CONTRACTCHURN  ,  ST.[Churn Label],Contract
FROM services S, demographics D,  status ST 
WHERE S.[Customer ID] =D.[Customer ID]AND D.[Customer ID] =ST.[Customer ID]  AND [Churn Label]= 'YES') AS NEWTABLE

SELECT *FROM MOSTCHURN  WHERE RN =1
-----2.12   Get churn rate for a determined period
GO

create PROCEDURE Charn_rate @quarter char(4)
WITH ENCRYPTION
	AS 
	BEGIN
	IF EXISTS(SELECT Quarter FROM status
		WHERE Quarter =@quarter)
		BEGIN

			DECLARE @Churn INTEGER;
			DECLARE @customers_count INTEGER;

			SET @Churn = 
					(SELECT COUNT("Customer Status")
					FROM status
					WHERE "Customer Status" = 'Churned'
					AND Quarter =@quarter)

			SET @customers_count =(SELECT COUNT(*) FROM status
			WHERE Quarter =@quarter)
			
			EXEC ('SELECT CAST(CAST('+@Churn+' AS float)/ CAST('+@customers_count + 'AS float)*100 AS decimal(10,2)) Churn_rate_for_quarter_'+@quarter)
		END
		ELSE
			PRINT 'Quarter name you are entered is not available';
	END	

	EXEC Charn_rate	'Q3'

GO
-----2.13 Calculating the sum of subscribers for each service according to the customers status
CREATE PROCEDURE Summary_of_services_Sub_ByCustmerStatus @CustmerStatus varchar(20)='Churned'

WITH ENCRYPTION
AS
IF @CustmerStatus IN ('Churned', 'Stayed','Joined')
BEGIN
SELECT
	st.[Customer Status],
	AVG(CAST(ser.[Tenure in Months] AS decimal(4,1))) AS "Average Tenure in Months",
	SUM
	 (
		CASE WHEN ser.[Phone service] = 'Yes' THEN 1
		ELSE 0
		END
	) AS "Phone service",
	SUM
	 (
		CASE WHEN ser.[Multiple Lines] = 'Yes' THEN 1
		ELSE 0
		END
	 ) AS "Multiple Lines",
	SUM
	 (
		CASE WHEN ser.[Internet Service] = 'Yes' THEN 1
		ELSE 0
		END
	 ) AS "Internet Service",
	SUM
	 (
		CASE WHEN ser.[Online Security] = 'Yes' THEN 1
		ELSE 0
		END
	 ) AS "Online Security",
	SUM
	 (
		CASE WHEN ser.[Online Backup] = 'Yes' THEN 1
		ELSE 0
		END
	 ) AS "Online Backup",
	SUM
	 (
		CASE WHEN ser.[Device Protection Plan] = 'Yes' THEN 1
		ELSE 0
		END
	 ) AS "Device Protection Plan",
	SUM
	 (
		CASE WHEN ser.[Premium Tech Support] = 'Yes' THEN 1
		ELSE 0
		END
	 ) AS "Premium Tech Support",
	 SUM
	 (
		CASE WHEN ser.[Streaming TV] = 'Yes' THEN 1
		ELSE 0
		END
	 ) AS "Streaming TV",
	 SUM
	 (
		CASE WHEN ser.[Streaming Movies] = 'Yes' THEN 1
		ELSE 0
		END
	 ) AS "Streaming Movies",
	 SUM
	 (
		CASE WHEN ser.[Unlimited Data] = 'Yes' THEN 1
		ELSE 0
		END
	 ) AS "Unlimited Data",
	 SUM(CAST(ser.[Total Revenue] AS decimal(10,2))) AS "Total Revenue"

	
	FROM status st JOIN services ser
	ON ser.[Customer ID] = st.[Customer ID]
	AND st.[Customer Status] = @CustmerStatus
	GROUP BY st.[Customer Status]
END
ELSE
	PRINT 'Please enter a correct Customer status'

GO
EXEC Summary_of_services_Sub_ByCustmerStatus 'CHURNED'

-----2.14 Get the number of satisfied customers in each city
GO

CREATE VIEW cities_satisfaction_score
WITH ENCRYPTION
AS
SELECT *
FROM
(
SELECT l.City,
			Count
			 (
				l.[Customer ID]
			 ) AS "Count of all customers",
			SUM
			 (
				CASE WHEN sta.[Satisfaction Score] = '5' THEN 1
				ELSE 0
				END
			 ) AS "Count Of Satisfaction Score 5",
			 SUM
			 (
				CASE WHEN sta.[Satisfaction Score] = '4' THEN 1
				ELSE 0
				END
			 ) AS "Count Of Satisfaction Score 4",
			 SUM
			 (
				CASE WHEN sta.[Satisfaction Score] = '3' THEN 1
				ELSE 0
				END
			 ) AS "Count Of Satisfaction Score 3",
			 SUM
			 (
				CASE WHEN sta.[Satisfaction Score] = '2' THEN 1
				ELSE 0
				END
			 ) AS "Count Of Satisfaction Score 2",
			 SUM
			 (
				CASE WHEN sta.[Satisfaction Score] = '1' THEN 1
				ELSE 0
				END
			 ) AS "Count Of Satisfaction Score 1",
			 SUM
			 (
				CASE WHEN sta.[Customer Status] = 'Churned' THEN 1
				ELSE 0
				END
			 ) AS "Count Of Churned customers"

	FROM location l JOIN status sta
	ON l.[Customer ID] = sta.[Customer ID]
	GROUP BY l.City) AS newtable
	

	SELECT *
		FROM cities_satisfaction_score where city = 'Daly City'

----2.15  Get the number of satisfied customers in a specified city
GO
create PROCEDURE city_satisfaction_score @city varchar(20)
WITH ENCRYPTION
AS
SELECT *
		FROM cities_satisfaction_score
		WHERE City= @city
	
EXEC city_satisfaction_score 'Daly City'	

----2.16 Get the average of monthly download in each city
GO
CREATE VIEW Cities_avg_monthly_download
WITH ENCRYPTION
AS
SELECT l.City, AVG(CAST(ser.[Avg Monthly GB Download] AS decimal(4,2))) AS "Avg Monthly GB Download"
	FROM location l JOIN services ser
	ON l.[Customer ID] = ser.[Customer ID]
	GROUP BY l.City
GO
SELECT * FROM Cities_avg_monthly_download where city = 'Daly City'

----2.17 Get the average of monthly download in a specific city
Go
CREATE PROCEDURE City_avg_monthly_download @city varchar(20)
WITH ENCRYPTION
AS
SELECT * FROM Cities_avg_monthly_download
WHERE City = @city

EXEC City_avg_monthly_download 'acton'

 -----------------------------------------------------------------------

