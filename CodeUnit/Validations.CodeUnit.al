codeunit 50111 Validations
{
    trigger OnRun()
    begin

    end;


    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterValidateEvent', 'Address', false, false)]
    local procedure TableCustomerOnAfterValidateAddress(var Rec: Record Customer)
    begin
        CheckForTextToheeb(Rec.Address);
    end;

    local procedure CheckForTextToheeb(TextToVerify: Text)
    begin
        if TextToVerify.Contains('Toheeb') then
            Message('A Text with name "Toheeb" has been found.');
    end;
}