@EndUserText.label: 'Employee projection View'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_EMPLOYEE_2143 as projection on ZI_EMPLOYEE_2143 as Employee {
    @Search.defaultSearchElement: true
    key EmployeeID,
    @Search.defaultSearchElement: true
    EmailID,
    FirstName,
    LastName,
    FullName,
    Dob,
    Gender,
    Designation,
    Salarygrade,
    Industry,
    ManagerId,
    Address,
    Mobileno,
    City,
    Country,
    EmpStatus,
    EmpStartDate,
    EmpEndDate,
    EmpWorkLocId,
    EmpWorkLocDesc,
    EmpWorkLocCity,
    EmpWorkLocCountry,
    EmpWorkExperience   
}
