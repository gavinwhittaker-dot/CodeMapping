page 50100 "R365 NAV BC Code Mapping"
{
    PageType = List;
    SourceTable = "R365 NAV BC Code Mapping";
    Caption = 'NAV to BC Code Mapping';
    UsageCategory = Lists;
    ApplicationArea = All;
    Editable = false;
    CardPageId = "R365 NAV BC Code Mapping Card";
    SourceTableView = sorting("Type", "Old Code");

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Old Code"; Rec."Old Code")
                {
                    Caption = 'Nav Code (Old)';
                    ToolTip = 'Specifies the code used in the old NAV system.';
                }
                field("New Code"; Rec."New Code")
                {
                    Caption = 'BC Code (New)';
                    ToolTip = 'Specifies the equivalent code in Business Central.';
                }
                field("New Description"; Rec."New Description")
                {
                    Caption = 'BC Description';
                    ToolTip = 'Specifies the description of the code as it appears in Business Central.';
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(FilterGLAccounts)
            {
                Caption = 'GL Accounts only';
                ApplicationArea = All;
                Image = ChartOfAccounts;
                ToolTip = 'Filter the list to show GL Account mappings only.';

                trigger OnAction()
                begin
                    Rec.SetRange("Type", Rec."Type"::"GL Account");
                    CurrPage.Update(false);
                end;
            }
            action(FilterCostCentre)
            {
                Caption = 'Cost Centres only';
                ApplicationArea = All;
                Image = Dimensions;
                ToolTip = 'Filter the list to show Cost Centre mappings only.';

                trigger OnAction()
                begin
                    Rec.SetRange("Type", Rec."Type"::"Cost Centre");
                    CurrPage.Update(false);
                end;
            }
            action(FilterFund)
            {
                Caption = 'Funds only';
                ApplicationArea = All;
                Image = Dimensions;
                ToolTip = 'Filter the list to show Fund mappings only.';

                trigger OnAction()
                begin
                    Rec.SetRange("Type", Rec."Type"::"Fund");
                    CurrPage.Update(false);
                end;
            }
            action(FilterAnalysisCode)
            {
                Caption = 'Analysis Codes only';
                ApplicationArea = All;
                Image = Dimensions;
                ToolTip = 'Filter the list to show Analysis Code mappings only.';

                trigger OnAction()
                begin
                    Rec.SetRange("Type", Rec."Type"::"Analysis Code");
                    CurrPage.Update(false);
                end;
            }
            action(FilterProject)
            {
                Caption = 'Projects only';
                ApplicationArea = All;
                Image = Dimensions;
                ToolTip = 'Filter the list to show Project mappings only.';

                trigger OnAction()
                begin
                    Rec.SetRange("Type", Rec."Type"::"Project");
                    CurrPage.Update(false);
                end;
            }
            action(ClearTypeFilter)
            {
                Caption = 'Show all';
                ApplicationArea = All;
                Image = ClearFilter;
                ToolTip = 'Remove the type filter and show all mappings.';

                trigger OnAction()
                begin
                    Rec.SetRange("Type");
                    CurrPage.Update(false);
                end;
            }
        }
    }
}
