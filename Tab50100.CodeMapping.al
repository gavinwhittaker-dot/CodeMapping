table 50100 "R365 NAV BC Code Mapping"
{
    Caption = 'NAV to BC Code Mapping';
    DataClassification = CustomerContent;
    LookupPageId = "R365 NAV BC Code Mapping";
    DrillDownPageId = "R365 NAV BC Code Mapping";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
            DataClassification = SystemMetadata;
        }
        field(10; "Type"; Enum "R365 NAV BC Mapping Type")
        {
            Caption = 'Type';
            DataClassification = CustomerContent;
        }
        field(20; "Old Code"; Code[20])
        {
            Caption = 'Old Code (NAV)';
            DataClassification = CustomerContent;
        }
        field(21; "Old Description"; Text[100])
        {
            Caption = 'Old Description (NAV)';
            DataClassification = CustomerContent;
            ObsoleteState = Removed;
            ObsoleteReason = 'Field no longer required.';
            ObsoleteTag = '1.0.0.2';
        }
        field(30; "New Code"; Code[20])
        {
            Caption = 'New Code (BC)';
            DataClassification = CustomerContent;
        }
        field(31; "New Description"; Text[100])
        {
            Caption = 'New Description (BC)';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(TypeOldCode; "Type", "Old Code")
        {
        }
        key(TypeNewCode; "Type", "New Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Type", "Old Code", "New Code", "New Description")
        {
        }
    }
}
