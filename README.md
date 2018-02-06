# DEV450

## Notes
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

## Tasks
* Research execution log
* Object Oriented Programming

## Triggers
* when `insert` happens = when the trigger is fired we first get Trigger.new.  This is the data structure and and sObject.  It is writable.
* 
