@EndUserText.label: 'CDS View for Projects'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZI_PROJECTS_2143 
    as select from ztb_projects as Projects {
    key projectid as ProjectID,
    projectdescription as ProjectDes,
    projectstatus as ProjectStatus,
    clientname as ClientName,
    clientlocation as ClientLocation,
    startdate as StartDate,
    enddate as EndDate
}
