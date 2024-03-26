page 50100 SalesLineLogs
{
    Editable = false;
    ApplicationArea = All;
    Caption = 'Sales Line Logs';
    PageType = List;
    SourceTable = SalesLineLog;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field("Document type"; Rec."Document type")
                {
                    ToolTip = 'Specifies the value of the Document type field.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                }
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field(LogEntryType; Rec.LogEntryType)
                {
                    ToolTip = 'Specifies the value of the LogEntryType field.';
                }
            }
        }
    }
}