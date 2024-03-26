codeunit 50100 SalesLineSubscr
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", OnAfterInsertEvent, '', true, true)]
    local procedure SalesLineOnAfterInsertEvent(var Rec: Record "Sales Line"; RunTrigger: Boolean)
    begin
        InsertSalesLineLog(Rec, LogEntryType::Insert);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", OnAfterModifyEvent, '', true, true)]
    local procedure SalesLineOnAfterModifyEvent(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; RunTrigger: Boolean)
    begin
        if Rec.Quantity <> xRec.Quantity then begin
            InsertSalesLineLog(Rec, LogEntryType::Modify);
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", OnAfterDeleteEvent, '', true, true)]
    local procedure SalesLineOnAfterDeleteEvent(var Rec: Record "Sales Line"; RunTrigger: Boolean)
    begin
        InsertSalesLineLog(Rec, LogEntryType::Delete);
    end;

    local procedure InsertSalesLineLog(var SalesLine: Record "Sales Line"; LogEntryType: Enum LogEntryType)
    var
        InventorySetup: Record "Inventory Setup";
        Location: Record Location;
        SalesLineLog: Record SalesLineLog;
    begin
        if SalesLine."Location Code" = '' then
            exit;
        if not InventorySetup.Get() then
            exit;
        if not InventorySetup.LogSalesLine then
            exit;
        if not Location.Get(SalesLine."Location Code") then
            exit;
        if not (Location.SalesLocation or Location.MainLocation) then
            exit;

        SalesLineLog.Init();
        SalesLineLog."Item No." := SalesLine."No.";
        SalesLineLog."Document No." := SalesLine."Document No.";
        SalesLineLog."Document type" := SalesLine."Document Type";
        SalesLineLog."Line No." := SalesLine."Line No.";
        SalesLineLog.Quantity := SalesLine.Quantity;
        SalesLineLog.LogEntryType := LogEntryType;
        SalesLineLog.Insert;
    end;
}