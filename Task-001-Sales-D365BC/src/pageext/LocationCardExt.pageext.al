pageextension 50101 LocationCardExt extends "Location Card"
{
    layout
    {
        addafter(General)
        {
            group(SalesLineLogs)
            {
                Caption = 'Sales Line Logs';

                field(SalesLocation; Rec.SalesLocation)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Location field.';
                }
                field(MainLocation; Rec.MainLocation)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Main Location field.';
                }
            }
        }
    }
}