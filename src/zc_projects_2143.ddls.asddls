@EndUserText.label: 'Projects projection View'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_PROJECTS_2143 as projection on ZI_PROJECTS_2143 as Projects {
    @Search.defaultSearchElement: true
    key ProjectID,
    ProjectDes,
    ProjectStatus,
    ClientName,
    ClientLocation,
    StartDate,
    EndDate
}
