page 50101 "R365 NAV BC Code Mapping Card"
{
    PageType = Card;
    SourceTable = "R365 NAV BC Code Mapping";
    Caption = 'NAV to BC Code Mapping Card';
    UsageCategory = None;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies what is being mapped.';
                }
                field("Old Code"; Rec."Old Code")
                {
                    ToolTip = 'Specifies the code used in the old NAV system.';
                }
                field("Old Description"; Rec."Old Description")
                {
                    ToolTip = 'Specifies the description of the code as it appeared in NAV.';
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
