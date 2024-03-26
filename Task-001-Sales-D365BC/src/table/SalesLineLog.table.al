table 50100 SalesLineLog
{
    Caption = 'Sales Line Logs';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(14; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(10; "Document type"; Enum "Sales Document Type")
        {
            Caption = 'Document type';
        }
        field(11; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(12; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(13; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(15; LogEntryType; Enum LogEntryType)
        {
            Caption = 'Log Entry Type';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}