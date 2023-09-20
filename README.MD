## Visit link below for detailed information regarding the learning pathway for "Get started with development in Microsoft Dynamics 365 Business Central"
https://learn.microsoft.com/en-us/training/paths/development-get-started-business-central/
## Visit link below for detailed information regarding this learning pathway "Discover the foundation of customizing Microsoft Dynamics 365 Business Central"
https://learn.microsoft.com/en-us/training/paths/foundation-customize-business-central/

## Visit link below for detailed information regarding the learning pathway for  "Learn the application foundation with the AL programming language for Microsoft Dynamics 365 Business Central"
https://learn.microsoft.com/en-us/training/paths/application-foundation-al-language/

## Visit link below for detailed information regarding the learning pathway for  "Learn about the data management foundation in Microsoft Dynamics 365 Business Central"
https://learn.microsoft.com/en-us/training/paths/data-management-foundation-business-central/

## Visit link below for detailed information regarding the learning pathway for  "Use application development best practices in Microsoft Dynamics 365 Business Central"
https://learn.microsoft.com/en-us/training/paths/use-application-development-business-central/

## Visit link below for detailed information regarding the learning pathway for  "Develop using Power Apps and Power Automate for Dynamics 365 Business Central"
https://learn.microsoft.com/en-us/training/paths/power-apps-power-automate-business-central/

## Visit link below for detailed information regarding the learning pathway for  "Tailor roles and design the UI for Microsoft Dynamics 365 Business Central"
https://learn.microsoft.com/en-us/training/paths/tailor-roles-design-ui/

## Visit link below for detailed information regarding the learning pathway for  "Interface with Microsoft Dynamics 365 Business Central"
https://learn.microsoft.com/en-us/training/paths/interface-with-business-central/



## AL

AL is a programming language specifically designed for developing extensions and customizations for Business Central, which is a comprehensive business management solution. It's used to create apps and extensions to tailor Business Central to specific business needs.

AL is similar to other programming languages and is used for defining tables, pages, codeunits, and other application objects within Business Central. Developers use AL to write code that interacts with the Business Central database, user interface, and business logic.

If you have specific questions or need assistance with AL in the context of Business Central, please feel free to ask, and I'll do my best to help.In Microsoft Dynamics 365 Business Central, application objects are the building blocks of the system. These objects define the structure and behavior of the application. Here's a brief explanation of some of the core application objects:

Tables:
Tables are used to define the structure of data in Business Central. They represent entities or database tables where data is stored.
Each table has fields (columns) that define the data it can store.
Developers use tables to define the data model of the application, specifying which data should be stored and how it's related.
Codeunits:
Codeunits are containers for code that can be called from other parts of the application.
They contain procedures and functions written in AL code.
Codeunits are used to encapsulate business logic, calculations, and other reusable code.
Pages:
Pages define the user interface of Business Central.
They specify how data is presented to users and how users can interact with it.
Pages can display data from tables and allow users to perform actions like adding, modifying, or deleting records.
Reports:
Reports are used to generate printed or electronic documents, such as invoices, purchase orders, or financial statements.
They can be designed to format and present data in a specific way for printing or exporting.
Queries:
Queries are used to define a subset of data from one or more tables.
They allow users to filter and retrieve specific data sets easily.
Queries are often used in conjunction with lists and reports.
XMLPorts:
XMLPorts are used to import and export data in XML format.
They define how data is structured when exchanged with external systems or for data migration.
Enums (Enumerations):
Enums are used to define a set of named values (constants) that represent a discrete set of options or choices.
They help ensure consistency and make it easier to work with predefined values.
Page Extensions and Table Extensions:
Extensions allow you to modify existing pages and tables without modifying their base code.
Page extensions let you add fields, actions, and other elements to existing pages.
Table extensions let you add fields to existing tables.
CodeUnit Extensions:
Similar to page and table extensions, codeunit extensions allow you to extend the behavior of existing codeunits without modifying their base code.
Developers use these application objects to customize and extend the functionality of Business Central according to the specific needs of a business. AL is the programming language used to define and implement these objects, and it provides a structured way to work with the system's data and user interface. 


## Object ranges


50,000-99,999
This range is for customizations, and for test purposes. For Business Central online, a partner can develop an extension tailored to the individual tenant to fit the needs. The partner will develop the extension either by using a sandbox tenant or by obtaining a Docker image. Once the development is done, the extension can be deployed to the individual tenant.

Also, use this range as part of training and similar, such as if you're using a sandbox tenant or a build of Business Central on Docker.

## Differences in the development environments

Coming from the Dynamics NAV development environment and C/SIDE, it's good to know about some differences and optimizations between them. The following sections go through some of these changes, but it isn't an exhaustive list.

 Tip

A very useful tool working in Visual Studio Code is IntelliSense, which gives you a list of options in the current context. To activate IntelliSense from anywhere in the code, press Ctrl+Space.

General development approach
While you could change the existing Dynamics NAV source code using C/SIDE, the best approach to develop with the AL Language development environment is to work with Extensions only. It means that you can extend the existing code by adding new functionality or integrate your code using Events. But, it isn't possible to change the existing code, for example in codeunits.

With Business Central 2019 release wave 2, the possibility to change or "code-customize" the base application was introduced for on-premise installations. But, it was also announced that in the future, code-customization won't be an option, only extension model will be used.

Data types
C/SIDE	AL Language Development Environment
Dates are parsed based on culture settings.	Locale independent and supports only: yyyy-mm-ddD.
Boolean values are expressed as yes/no.	Boolean values are expressed as true/false.
For tables, integers can allow decimal values. For example, 5.0 converts to an integer, 5.4 throws an error at runtime.	For tables, Min, Max, InitValue numbers with a fraction are expressed as decimal, thus they aren't a valid integer data type.
The largest constant integer can be 999999999999999.	Transforms to 999'999'999'999'999.0, a decimal value. In AL, this can be expressed as 999999999999999.0 or 999999999999999L.
Syntax updates
C/SIDE	AL Language Development Environment
The token for multilanguage comment is @@@.	A multilanguage comment is marked with Comment.
Several properties are renamed, for example:

C/SIDE	AL Language Development Environment
AutoFormatExpr	AutoFormatExpression
DataCaptionExpr	DataCaptionExpression
Layout	GridLayout
ProviderID	Provider
 Note

Property values are considered syntax elements; thus they must follow the standard AL escaping rules.

Multilanguage properties
With the introduction of .xliff files, the ML properties, such as CaptionML and TooltipML aren't used for this translation method. Use the equivalent properties instead, such as Caption and Tooltip. Then, make sure the manifest is set up to generate the /Translations folder and use the generated .xliff files for translations of the extension. For more information, see Working with Translation Files.

Pages
The ActionContainer elements in AL have been renamed; the following table lists the renamed elements:

C/SIDE	AL Language Development Environment
ActionItems	Processing 
ActivityButtons	Sections 
HomeItems	Embedding 
NewDocumentItems	Creation 
RelatedInformation	Navigation 
Reports	Reporting 
For instance, area(Sections) can be defined inside the actions section of the page.

Likewise, Container and ContainerType elements in C/SIDE are renamed to area(Content|FactBoxes|RoleCenter) and can be defined inside the layout section of the page.

 Note

For backward compatibility, we continue to support adding non-part pages as parts. It's a good idea to redesign your page to only use Card part or List part, as we may remove support in a future update.

For syntax examples, see Page Object and Page Extension Object.

Naming
Controls, actions, and methods names must be unique on pages. In C/SIDE, you could create a Part control with the same name as a method, which would give you an error at runtime. It's now prevented by disallowing duplicates. Similarly, trigger and trigger event names are disallowed on matching application object types. Likewise, actions and fields could have same names before, but that would have prevented page testability access, and will now throw a compilation error.

 Note

Name on Controls and Actions on Pages is mandatory now.

Property dependencies
For some properties to work, they require you to set another property. An example is PromotedCategory, which requires that you've enabled the property Promoted. The following table lists some of the properties that have this dependency.

Property	Depends on the property...
PromotedCategory	Promoted
PromotedIsBig	Promoted
ValidateTableRelation	TableRelation
SourceTableTemporary	SourceTable
RunPageMode	RunObject
Limited functionality
The InitValue property of type Duration isn't allowed in the AL Language development environment. The InitValue of type DateTime is only allowed for the value 0DT.

See Also
Developing Extensions

## Adding help links from pages, reports and XMLports

The following examples show how you can specify the ContextSensitiveHelpPage property from new pages, reports, and XMLports:




page 50100 MyPageWithHelp
{
    ContextSensitiveHelpPage = 'sales-rewards';
}



report 50100 MyReportWithHelp
{
    requestpage
    {
        ContextSensitiveHelpPage = 'sales-rewards';
    }
}



xmlport 50100 XmlPortWithHelp
{
    requestpage
    {
        ContextSensitiveHelpPage = 'sales-rewards';
    }
}
In all three examples, the ContextSensitiveHelpPage property is set to point at the same Help file. This is because all three example objects support the same feature that is explained in the sales-rewards Help article. In your app, you can choose to structure the Help differently.

## JSON Files

When you start a new AL project, two JSON files; the app.json file and the launch.json file are generated automatically. The app.json file contains information about the extension that you're building, such as publisher information and specifies the minimum version of base application objects that the extension is built on. Often, the app.json file is referred to as the manifest. This article describes the app.json file settings in the App.json file section


The launch.json file contains information about the server that the extension launches on. The launch.json file has multiple configuration options available, for example, for snapshot debugging and attach debugging.


##

Programming conventions for control(conditional, compound and repetitive) statement 

(conditional)
if and then should be on the same line, else should be on a separate line.
If there are many or long expressions, then should be on a new line and be aligned with if.
When you write if expressions with then and else parts, write them so that the then result is more probable than the else one.
If the last statement in the then part of an if-then-else statement is an exit or an error, don't continue with an else statement.

``` 
if x = y then  
    x := x + 1  
else  
    x := -x - 1;
```

```
if (xxxxxxxxxx = yyy) and   
    (aaa = bbbbbbbbbb)  
then  
    x := a  
else  
    y := b;
```


```
if x <> y then  
    exit(true);  
x := x * 2;  
y := y - 1;
```




The following example shows an if-then statement without the optional else statement.
```
if Amount < 1000 then  
    Total := Total + Amount;  
```


The following example shows a nested if-then-else statement.
```...  
if Amount < 1000 then begin  
    if I > J then  
        Max := I  
    else  
        Max := J;  
    Amount := Amount * Max;  
    end;  
else  
...  
```

## Methods boilerplate
```

local procedure MyProcedure()
var
    myInt: Integer;
begin
    
end;
```


[Attributes(arguments list)]
local procedure <method_name>(parameter list) <return_value_name> : <data_type>[<length>]






## Heavily revise all learning pathways!


## Page and Action Triggers

https://learn.microsoft.com/en-us/dynamics-nav/page-and-action-triggers