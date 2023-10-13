page 50149 "My Address"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(WhatsTheAddress)
            {
                ApplicationArea = All;
                Caption = 'What is the Address?';
                ToolTip = 'Select the address.';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Addresses;

                trigger OnAction()
                var
                    iAddressProvider: Interface IAddressProvider;
                begin
                    AddressproviderFactory(iAddressProvider);
                    Message(iAddressProvider.GetAddress());
                end;
            }

            action(SendToHome)
            {
                ApplicationArea = All;
                Image = Home;
                Caption = 'Send to Home.';
                ToolTip = 'Set the interface implementation to Home.';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                trigger OnAction()
                begin
                    sendTo := sendTo::Private
                end;
            }

            action(SendToWork)
            {
                Image = WorkCenter;
                Caption = 'Send to Work.';
                ToolTip = 'Set the interface implementation to Work.';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    sendTo := sendTo::Company
                end;
            }
        }
    }

    local procedure AddressproviderFactory(var iAddressProvider: Interface IAddressProvider)
    var
        CompanyAddressProvider: Codeunit CompanyAddressProvider;
        PrivateAddressProvider: Codeunit PrivateAddressProvider;
    begin

        if sendTo = sendTo::Company then
            iAddressProvider := CompanyAddressProvider;

        if sendTo = sendTo::Private then
            iAddressProvider := PrivateAddressProvider;

    end;

    var
        sendTo: enum SendTo;
}