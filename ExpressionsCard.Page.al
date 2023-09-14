page 50111 "Expressions Card"
{
    PageType = Card;            // Define the page type as a "Card."
    ApplicationArea = All;      // Make it applicable to all application areas.
    UsageCategory = Documents;  // Categorize it under "Documents."
    Caption = 'Expressions Card';  // Set the page caption or title.

    layout
    {
        area(Content)            // Define the main content area of the page.
        {
            group(Input)         // Create an input-related grouping.
            {
                Caption = 'Input';  // Set the caption for this input group.

                field(Value1; Value1)  // Create a field for Value1 input.
                {
                    ApplicationArea = All;   // Applicable to all application areas.
                    ToolTip = 'Enter a value for Value1.';  // Tooltip for the field.
                    Caption = 'Value1';       // Caption for the field.
                }
                field(Value2; Value2)  // Create a field for Value2 input.
                {
                    ApplicationArea = All;   // Applicable to all application areas.
                    ToolTip = 'Enter a value for Value2.';  // Tooltip for the field.
                    Caption = 'Value2';       // Caption for the field.
                }
            }
            group(Output)        // Create an output-related grouping.
            {
                Caption = 'Output';  // Set the caption for this output group.

                field(Result; Result)  // Create a field to display the result.
                {
                    ApplicationArea = All;   // Applicable to all application areas.
                    ToolTip = 'The result of the operation.';  // Tooltip for the field.
                    Caption = 'Result';       // Caption for the field.
                    Editable = false;          // The field is not editable.
                }

            }
        }
    }

    actions
    {
        area(Processing)  // Define actions related to processing.
        {
            action(Execute)  // Create an action called "Execute."
            {
                ApplicationArea = All;   // Applicable to all application areas.
                Caption = 'Execute';     // Set the caption for the action.
                ToolTip = 'Click to calculate the result.';  // Tooltip for the action.
                Image = ExecuteBatch;    // Assign an image to the action.

                trigger OnAction()       // Triggered when the action is performed.
                begin
                    Result := Value1 > Value2;  // Calculate and set the result.
                end;
            }
        }
    }

    var
        Value1: Integer;  // Declare a variable for Value1 as an integer.
        Value2: Integer;  // Declare a variable for Value2 as an integer.
        Result: Boolean;  // Declare a variable for the result as a boolean.
}
