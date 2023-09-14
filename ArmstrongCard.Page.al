// An Armstrong number is calculated by taking each digit to the power of the final digit and creating a sum of the results.
// Example: 153
// 1 raised to power 3 = 1
// 5 raised to power 3 = 125
// 3 raised to power 3 = 27
// Sum of 1, 125, and 27 = 153
// Therefore, 153 is an Armstrong number.


/*These comments explain the purpose and functionality of different sections, elements, and variables within the code.
The code calculates Armstrong numbers within the range from 0 to 10000 and displays them using the Message function.*/

page 50113 "Armstrong Card"
{
    PageType = Card;                // Define the page type as a "Card."
    ApplicationArea = All;          // Make it applicable to all application areas.
    UsageCategory = Documents;      // Categorize it under "Documents."
    Caption = 'Toheeb Badru Armstrong Card';     // Set the page caption or title.

    layout
    {
        area(Content)
        {

        }
    }

    trigger OnOpenPage()             // Triggered when the page is opened.
    var
        Counter1, Counter2, PowerNumber, Number, Result : Integer;  // Declare variables for counting, power, number, and result.
        CounterText: Text[5];         // Declare a text variable for counter text.
        ArmstrongNumbers, Newline : Text;  // Declare text variables for Armstrong numbers and newline.
        ResultList: List of [Integer];  // Declare a list to store Armstrong numbers.
        Ch10, Ch13 : Char;            // Declare characters for newline.

    begin
        Ch10 := 10;                   // Initialize Ch10 with ASCII 10 (newline).
        Ch13 := 13;                   // Initialize Ch13 with ASCII 13 (carriage return).
        Newline := Format(Ch10) + Format(Ch13);  // Create a newline sequence.

        for Counter1 := 0 to 10000 do begin  // Loop through numbers from 0 to 10000.
            CounterText := Format(Counter1);  // Convert the counter to text.
            Evaluate(PowerNumber, CopyStr(CounterText, StrLen(CounterText), 1));  // Get the last digit as power number.

            for Counter2 := 1 to StrLen(CounterText) do begin  // Loop through each digit of the counter.
                Evaluate(Number, CopyStr(CounterText, Counter2, 1));  // Get a single digit as a number.
                Result += Power(Number, PowerNumber);  // Calculate the result based on the Armstrong number formula.
            end;

            if Result = Counter1 then  // If the result matches the original number...
                ResultList.Add(Result);  // ...add it to the list of Armstrong numbers.

            Clear(Result);  // Clear the result for the next iteration.
        end;

        foreach Counter1 in ResultList do  // Iterate through the list of Armstrong numbers.
            ArmstrongNumbers += Newline + Format(Counter1);  // Build a string of Armstrong numbers.

        Message(ArmstrongNumbers);  // Display the Armstrong numbers.
    end;
}
