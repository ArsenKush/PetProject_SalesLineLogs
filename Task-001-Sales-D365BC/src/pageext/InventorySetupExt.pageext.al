pageextension 50100 InventorySetupExt extends "Inventory Setup"
{
    layout
    {
        addafter(General)
        {
            group(SalesLineLogs)
            {
                Caption = 'Sales Line Logs';

                field(LogSalesLine; Rec.LogSalesLine)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Log Sales Line field.';
                }
            }
        }
    }
}