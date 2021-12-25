USE [EmploymentCenter]
GO


--1. ���������, �� ������ �����, ������� �� ��������� �����, ������ �� ������ ��������
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

--2. ���������, �� ������ ��� �������� ��� ����� ������ �������� ��������, �� ������ �������� ������
create proc findDealsForCompany
	@companyPhoneNumberToFind nvarchar(13)
as
begin
	select PIB, expectedSalary, allJoblesses.position as expectedPosition ,workExperience, allJoblesses.educationTypeName, allJoblesses.phoneNumber from vacancy
	join deal on deal.vacancyId = vacancy.id
	join company on company.id = vacancy.companyId
	join allJoblesses on allJoblesses.id = deal.joblessId
	where company.id = (
		select companyId 
		from companyPhoneNumbers 
		where phoneNumber = @companyPhoneNumberToFind
	)
	
end

exec findDealsForCompany '+380636056449'

--3. ��������� �� �������� ������ �������� ����� �� ������ ���� �� �������� ��������� ������ ����
create proc addDeal
	@joblessToAdd int,
	@vacancyToAdd int,
	@agentWhoAdds int
as
begin
	insert into deal(agentId,vacancyId,joblessId)
	values(@agentWhoAdds,@vacancyToAdd,@joblessToAdd)
	select * from allDeals
end

exec addDeal 2,29,2
