permissionset 50101 "R365 CODEMAP MAINT"
{
    Caption = 'NAV-BC Code Mapping - Maintain';
    Assignable = true;
    IncludedPermissionSets = "R365 CODEMAP READ";
    Permissions =
        tabledata "R365 NAV BC Code Mapping" = RIMD,
        page "R365 NAV BC Code Mapping Edit" = X;
}
