codeunit 50148 PrivateAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('My Home address;\ Basildon \ Essex')
    end;
}