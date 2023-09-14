page 50112 "Statements Card"
{
    PageType = Card;            // This defines the type of page as a "Card."
    ApplicationArea = All;      // The page is applicable to all application areas.
    UsageCategory = Documents;  // It's categorized under "Documents."
    Caption = ' Toheeb Badru Statements Card';  // The caption or title of the page.

    layout
    {
        area(Content)            // The main content area of the page.
        {
            group(Input)         // A grouping for input-related elements.
            {
                Caption = 'Input';  // The caption for this input group.

                field(Difficulty; Difficulty)  // A field for selecting the difficulty level.
                {
                    ApplicationArea = All;   // Applicable to all application areas.
                    Caption = 'Difficulty';  // Caption for the field.
                    ToolTip = 'Select the Difficulty.';  // Tooltip for the field.
                    trigger OnValidate()   // Triggered when the field is validated.
                    begin
                        GetSuggestionnn();  // Call the local procedure GetSuggestionnn().
                    end;
                }
            }

            group(Output)        // A grouping for output-related elements.
            {
                Caption = 'Output';  // The caption for this output group.

                field(Suggestion; Suggestion)  // A field to display suggestions.
                {
                    ApplicationArea = All;   // Applicable to all application areas.
                    Caption = 'Suggestion';  // Caption for the field.
                    ToolTip = 'Suggestion.';  // Tooltip for the field.
                    Editable = false;         // The field is not editable.
                }

                field(Level; Level)   // A field to display the difficulty level.
                {
                    ApplicationArea = All;   // Applicable to all application areas.
                    Caption = 'Level';       // Caption for the field.
                    ToolTip = 'Level.';       // Tooltip for the field.
                    Editable = false;         // The field is not editable.
                }
            }
        }
    }

    var
        Level: Text[30];      // Variable declaration for the Level (text, max 30 characters).
        Suggestion: Text[80]; // Variable declaration for the Suggestion (text, max 80 characters).
        Difficulty: Integer;  // Variable declaration for the Difficulty (integer).

    local procedure GetSuggestionnn()  // Local procedure to calculate suggestion and level.
    begin
        Level := '';         // Initialize Level as an empty string.
        Suggestion := '';    // Initialize Suggestion as an empty string.

        case Difficulty of   // Evaluate the value of Difficulty.
            1 .. 5:          // If Difficulty is in the range 1 to 5.
                begin
                    Level := 'Beginner';               // Set Level to 'Beginner.'
                    Suggestion := 'Take e-Learning or remote training';  // Set Suggestion.
                end;
            6 .. 8:          // If Difficulty is in the range 6 to 8.
                begin
                    Level := 'Intermediate';           // Set Level to 'Intermediate.'
                    Suggestion := 'Attend instructor-Led';  // Set Suggestion.
                end;
            9 .. 10:         // If Difficulty is in the range 9 to 10.
                begin
                    Level := 'Advanced';               // Set Level to 'Advanced.'
                    Suggestion := 'Attend instructor-Led and self study';  // Set Suggestion.
                end;
        end;
    end;
}
