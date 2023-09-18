## Create an interface.

Create a new .al file that defines an interface IAddressProvider, which has one method getAddress with a certain signature

## Create two codeunits that implement the interface.

Create two new .al files to create two codeunits: CompanyAddressProvider and PrivateAddressProvider. Both codeunits will implement the IAddressProvider interface, and each will define a different implementation of the getAddress method, which in this case is a simple variation of address value:

## Create a page with an action that tests the interface.

Create a new .al file to create a page with an action that captures the choice of address and calls, based on that choice, an implementation of the IAddressProvider interface:

## Create an enum to support the interface initialization.
Create a new .al file to create an enum that holds two values: Company and Private.