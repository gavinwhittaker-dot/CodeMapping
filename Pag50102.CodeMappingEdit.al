page 50102 "R365 NAV BC Code Mapping Edit"
{
    PageType = List;
    SourceTable = "R365 NAV BC Code Mapping";
    Caption = 'NAV to BC Code Mapping (Maintain)';
    UsageCategory = Administration;
    ApplicationArea = All;
    Editable = true;
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = true;
    SourceTableView = sorting("Type", "Old Code");

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies what is being mapped, for example G/L Account, Cost Centre, Fund, Analysis Code or Project.';
                }
                field("Old Code"; Rec."Old Code")
                {
                    ToolTip = 'Specifies the code used in the old NAV system.';
                }
                field("New Code"; Rec."New Code")
                {
                    ToolTip = 'Specifies the equivalent code in Business Central.';
                }
                field("New Description"; Rec."New Description")
                {
                    ToolTip = 'Specifies the description of the code as it appears in Business Central.';
                }
            }
        }
    }
}
