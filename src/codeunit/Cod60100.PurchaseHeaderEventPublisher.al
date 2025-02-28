codeunit 60100 PurchaseHeaderEventPublisher
{
    // Declare the Integration Event
    [IntegrationEvent(false, false)]
    procedure OnPurchaseHeaderEvent(var PurchaseHeader: Record "Purchase Header")
    begin
    end;

    // Procedure to Raise the Event
    procedure RaiseEvent(var PurchaseHeader: Record "Purchase Header")
    begin
        OnPurchaseHeaderEvent(PurchaseHeader);
    end;
}