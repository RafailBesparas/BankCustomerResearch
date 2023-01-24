--A Simple get to know analysis

select * 
from [dbo].[BankChurners]


--Change the M to Male and F to Female in Gender
select [Gender],
	Case When [Gender] = 'M' Then 'Male'
	     When [Gender] = 'F' Then 'Female'
		 Else [Gender]
		 END
from [dbo].[BankChurners]

Update [dbo].[BankChurners]
Set [Gender] = Case When [Gender] = 'M' Then 'Male'
	     When [Gender] = 'F' Then 'Female'
		 Else [Gender]
		 END

--Add the column to cluster the age of customers
alter table [dbo].[BankChurners]
add CustomerAgeCluster Nvarchar(255);



update [dbo].[BankChurners]
set [CustomerAgeCluster] = 
	Case When [Customer_Age] between 20 and 29 Then 'Twenties'
	When [Customer_Age] between 30 and 39 Then 'Thirties'
	When [Customer_Age] between 40 and 49 Then 'Fourties'
	When [Customer_Age] between 50 and 59 Then 'Fifties'
	When [Customer_Age] between 60 and 69 Then 'Sixties'
	When [Customer_Age] between 70 and 79 Then 'Sixties'
	Else [CustomerAgeCluster]
	End
from [dbo].[BankChurners]

