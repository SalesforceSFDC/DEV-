# DEV450

## Notes
* [Object Reference for Salesforce and Force.com](https://developer.salesforce.com/docs/atlas.en-us.210.0.object_reference.meta/object_reference/sforce_api_objects_concepts.htm)
* [Javascript](http://jstherightway.org/)
* [Quizlet](https://quizlet.com/209177466/salesforce-platform-developer-i-flash-cards/)
* Scheduled Apex Batch jobs
* In order to get the log post mortem, you have to go back and replicate the error
* Turn on log for the User
* The heap size is 6million bytes
* find Salesforce unmanaged packages
* memorize slide 266
* [Trigger and Order of Execution](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers_order_of_execution.htm)
* [The Force.com Multitenant Architecture](https://developer.salesforce.com/page/Multi_Tenant_Architecture)


* Most Apex code is executed implicitly
* `ID returnedId = Contact`
* `List<Account> accounts` - this is a null list
* `List<Account> accounts = new List<Account>` - empty list
* `accounts.add(new Account(name='Account1')):`
* instantiating an sObject of type Account and giving it a name Account1 and then adding it to a new List<>
* sObjects are memory and not database concepts
* The indices have to be uniqu and the values do not.
* List of sObjects of type Course_Delivery__c
* `AccountId = account (foreign key)`
* `Certification__c` - give me the foreign key
* `Certification__r.name` - give me the name of the foreign key
* FLS and Page Layout are required on Master-Detail and they are not required for Lookup Relationship.

```Apex
Integer i;
// newContact = sObject, new Contact() - instantiating the variable
Contact newContact = new Contact();
```

* sObject is the heap (server side memory)
* Apex is not case sensitive
* Js and Lightning Components are case sensitive
* Strings in Apex are in single quotes and in VFP they are in double quotes.
* `Account newAccount = new Account();` - instantiating a new sObject named and type Account.
```Apex
for (integer i=0; i<100; i++)
{ sum = new sum}
system.debug('sum');
```
## DML
* The `upsert` DML operation creates new records and updates sObject records within a single statement, using a specified field to determine the presence of existing objects, or the ID field if no field is specified.

* The `merge` statement merges up to three records of the same sObject type into one of the records, deleting the others, and re-parenting any related records.
* DML limit of 150 statements per Apex transaction.

This example inserts contacts in bulk by inserting a list of contacts in one call. The sample then updates those contacts in bulk too.
```Apex
// Create a list of contacts
List<Contact> conList = new List<Contact> {
    new Contact(FirstName='Joe',LastName='Smith',Department='Finance'),
        new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'),
        new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'),
        new Contact(FirstName='Kim',LastName='Shain',Department='Education')};
            
// Bulk insert all contacts with one DML call
insert conList;

// List to hold the new contacts to update
List<Contact> listToUpdate = new List<Contact>();

// Iterate through the list and add a title only
//   if the department is Finance
for(Contact con : conList) {
    if (con.Department == 'Finance') {
        con.Title = 'Financial analyst';
        // Add updated contact sObject to the list.
        listToUpdate.add(con);
    }
}

// Bulk update all contacts with one DML call
update listToUpdate;

```
### Apex Database Methods
* [Database Methods](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_methods_system_database.htm)
##
* Owner - Full Access, R, W, Manual Share, Transfer Owner, Delete
* OWD - private, read-only, read-write
* Role hierarchy
* Sharing rules
* Manual sharing
* Apex
* Process builder
##

## MVC
* View - field can be required only on the view
* Control - 
* Model - field required for the system

## Tasks
* Research execution log
* Object Oriented Programming

## Triggers
* when `insert` happens = when the trigger is fired we first get Trigger.new.  This is the data structure and and sObject.  It is writable.
* 
