tableextension 50101 LocationExt extends Location
{
    fields
    {
        field(50100; SalesLocation; Boolean)
        {
            Caption = 'Sales Location';
            DataClassification = CustomerContent;
        }
        field(50101; MainLocation; Boolean)
        {
            Caption = 'Main Location';
            DataClassification = CustomerContent;
        }
    }
}