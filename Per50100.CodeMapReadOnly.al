permissionset 50100 "R365 CODEMAP READ"
{
    Caption = 'NAV-BC Code Mapping - Read Only';
    Assignable = true;
    Permissions =
        tabledata "R365 NAV BC Code Mapping" = R,
        table "R365 NAV BC Code Mapping" = X,
        page "R365 NAV BC Code Mapping" = X,
        page "R365 NAV BC Code Mapping Card" = X;
}
