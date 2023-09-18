codeunit 50147 CompanyAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('FARSOUND address; \ West Horndon \ Brentwood')
    end;
}