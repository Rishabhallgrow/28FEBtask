pageextension 60101 PurchaseOrderPageExt extends "Purchase Order"
{
    actions
    {
        addlast(processing)
        {
            action(RaiseCustomEvent)
            {
                Caption = 'Raise Event';
                ApplicationArea = All;
                trigger OnAction()
                var
                    EventPublisher: Codeunit 60100;
                    PurchaseHeader: Record "Purchase Header";
                begin
                    // Ensure the Purchase Header record exists
                    if Rec."No." <> '' then begin
                        if PurchaseHeader.Get(Rec."Document Type", Rec."No.") then
                            EventPublisher.RaiseEvent(PurchaseHeader)
                        else
                            Message('Purchase Header not found. Please check the document.');
                    end
                    else
                        Message('No Purchase Document selected.');
                end;
            }
        }
    }
}
