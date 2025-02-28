codeunit 60100 PurchaseHeaderEventPublisher
{
    // Declare the Integration Event
    [IntegrationEvent(false, false)]
    procedure OnPurchaseHeaderEvent(PurchaseHeader: Record "Purchase Header"; var OutputValue: Text)
    begin
    end;

    // Procedure to Raise the Event
    procedure RaiseEvent(PurchaseHeader: Record "Purchase Header")
    var
        OutputText: Text;
    begin
        // Assign a default value before raising the event
        OutputText := 'Event triggered for Purchase Order: ' + PurchaseHeader."No.";

        // Raise the event
        OnPurchaseHeaderEvent(PurchaseHeader, OutputText);

        // Display the output message
        Message(OutputText);
    end;
}