USE [EmploymentCenter]
GO


--1. Процедура, що показує угоди, створені по конкретній людині, шукаємо по номеру телефона
create proc findDeals
	@phoneNumberToFind nvarchar(13)
as 
begin
	select allJoblesses.PIB, allVacancies.position, allVacancies.salary, allVacancies.vacancyDescription, allVacancies.name as companyName,allVacancies.phoneNumber as companyNumber from allJoblesses
	join allDeals on allDeals.joblessId = allJoblesses.id
	join allVacancies on allVacancies.id = allDeals.vacancyId
	where allJoblesses.phoneNumber = @phoneNumberToFind
end

exec findDeals '+380956078557'

