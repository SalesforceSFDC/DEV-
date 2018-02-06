Integer NUM = 10;
Account[] accs;
// Clean up old data
accs = [SELECT Id FROM Account WHERE name LIKE 'test%'];
Delete accs;

accs = new Account[NUM];
For (Integer I=0;I<NUM,I++)
{
    accs[I] = new Account(name='test ' + 1,
                         outstandingshares__c = 1);
}
insert accs;

Contact[] cons = new Contact[0];
For (Account acc : accs)
{
    cons.add(new Contact(lastName = acc.nam + '1', accountid = acc.id));
    cons.add(new Contact(lastName = acc.nam + '2', accountid = acc.id));
}
insert cons;
