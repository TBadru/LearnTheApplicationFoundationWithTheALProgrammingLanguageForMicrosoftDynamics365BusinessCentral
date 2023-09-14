page 50110 DataTypesCard
{
    PageType = Card;                // Define the page type as a "Card."
    ApplicationArea = All;          // Make it applicable to all application areas.
    UsageCategory = Documents;      // Categorize it under "Documents."
    Caption = 'Toheeb Badru Data Types Card';    // Set the page caption or title.

    layout
    {
        area(Content)                // Define the main content area of the page.
        {
            group(GroupName)         // Create a grouping (currently empty).
            {

            }
        }
    }

    actions
    {
        area(Processing)             // Define actions related to processing (currently empty).
        {

        }
    }

    trigger OnOpenPage()            // Triggered when the page is opened.
    begin
        Message('The value of %1 is %2', 'YesOrNo', YesOrNo);          // Display a message for YesOrNo.
        Message('The value of %1 is %2', 'Amount', Amount);             // Display a message for Amount.
        Message('The value of %1 is %2', 'When Was It', "When Was It"); // Display a message for "When Was It".
        Message('The value of %1 is %2', 'What Time', "What Time");     // Display a message for "What Time".
        Message('The value of %1 is %2', 'Description', Description);   // Display a message for Description.
        Message('The value of %1 is %2', 'Code Number', "Code Number"); // Display a message for "Code Number".
        Message('The value of %1 is %2', 'Ch', Ch);                     // Display a message for Ch.
        Message('The value of %1 is %2', 'Color', Color);               // Display a message for Color.

    end;

    var
        LoopNo: Integer;             // Declare a variable for LoopNo as an integer.
        YesOrNo: Boolean;            // Declare a variable for YesOrNo as a boolean.
        Amount: Decimal;             // Declare a variable for Amount as a decimal.
        "When Was It": Date;         // Declare a variable for "When Was It" as a date.
        "What Time": Time;           // Declare a variable for "What Time" as a time.
        Description: Text[30];       // Declare a variable for Description as text (max 30 characters).
        "Code Number": Code[10];     // Declare a variable for "Code Number" as code (max 10 characters).
        Ch: Char;                    // Declare a variable for Ch as a character.
        Color: Option Red,Orange,Yellow,Green,Blue,Violet;  // Declare a variable for Color as an option with predefined values.
}
