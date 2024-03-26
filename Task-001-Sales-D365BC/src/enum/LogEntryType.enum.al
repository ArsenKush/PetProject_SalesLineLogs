enum 50100 LogEntryType
{
    Extensible = true;
    
    value(0; Insert)
    {
        Caption = 'Insert';
    }
    value(1; "Modify")
    {
        Caption = 'Modify';
    }
    value(2; Delete)
    {
        Caption = 'Delete';
    }
}
