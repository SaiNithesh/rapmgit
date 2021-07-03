@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS View for Employee'
@Metadata.allowExtensions: true
define root view entity ZI_EMPLOYEE_2143 as select from ztb_employee as Employee        
{
    key employeeid as EmployeeID,
    emailid as EmailID,
    firstname as FirstName,
    lastname as LastName,
    fullname as FullName,
    dob as Dob,
    gender as Gender,
    designation as Designation,
    salarygrade as Salarygrade,
    industry as Industry,
    manager_id as ManagerId,
    address as Address,
    mobileno as Mobileno,
    city as City,
    country as Country,
    emp_status as EmpStatus,
    emp_start_date as EmpStartDate,
    emp_end_date as EmpEndDate,
    emp_work_loc_id as EmpWorkLocId,
    emp_work_loc_desc as EmpWorkLocDesc,
    emp_work_loc_city as EmpWorkLocCity,
    emp_work_loc_country as EmpWorkLocCountry,
    emp_work_experience as EmpWorkExperience
}
