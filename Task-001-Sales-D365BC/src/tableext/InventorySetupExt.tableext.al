tableextension 50100 InventorySetupExt extends "Inventory Setup"
{
    fields
    {
        field(50100; LogSalesLine; Boolean)
        {
            Caption = 'Log Sales Line';
            DataClassification = CustomerContent;
        }
    }
}