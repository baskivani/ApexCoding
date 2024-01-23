
// SOQL Part 1 (Versiyon 1)

 // Salesforce Object Query Language.

SELECT  filed1 , filed2 , filed3  FROM objectAdi   

list<Account> accList =    [SELECT Id, Name, Type, Phone FROM Account];

//system.debug(accList);
/*
(Account:{Id=001Hu00002xfONBIA2, Name=GenePoint, Type=Customer - Channel, Phone=(650) 867-3450}, 
 Account:{Id=001Hu00002xfON9IAM, Name=United Oil & Gas, UK, Type=Customer - Direct, Phone=+44 191 4956203},
Account:{Id=001Hu00002xfONAIA2, Name=United Oil & Gas, Singapore, Type=Customer - Direct, Phone=(650) 450-8810},
...

*/

for( Account  sepet :  accList   ){
    system.debug(sepet.Name);
    
}

// MAP ile query yapmak



Map<ID , Account> accMap = new Map<ID , Account>([SELECT Id, Name, Type, Phone FROM Account]);
system.debug(accMap);
/*
{001Hu00002xLnbgIAC=Account:{Id=001Hu00002xLnbgIAC, Name=Sample Account for Entitlements}, 
 001Hu00002xLrwOIAS=Account:{Id=001Hu00002xLrwOIAS, Name=Farmers Coop. of Florida, Phone=(850) 644-4200}, 
 001Hu00002xfON1IAM=Account:{Id=001Hu00002xfON1IAM, Name=Edge Communications, Type=Customer - Direct, Phone=(512) 757-6000}
...

*/


Map<ID , Account> accMap = new Map<ID , Account>([SELECT Id, Name, Type, Phone FROM Account]);

SET<id> accIdleri = accMap.keySet();
//system.debug(accIdleri);
/*
{001Hu00002xLnbgIAC, 
001Hu00002xLrwOIAS,
001Hu00002xfON1IAM, ...
*/
// keySet()  ==> set doner  .. set icerisinde for loop olmaz  foreach doneriz
// values()   == liste doner
// get(KEY)   ==  verilen keyin value sunu doner     

for (id  accId :   accIdleri      ){
    //system.debug(accId);
    //system.debug(accMap.get(accId));
    //system.debug(accMap.get(accId).Name);
}

list<Account> accList =   accMap.values() ;
system.debug(accList); // acc list


//  FILTRE  
//  WHERE 
// not queryde "" kulanilmaz  '' kullnilir

SELECT Id, Name, Type, Phone  FROM Account WHERE Rating = 'Warm';
// rating i Warm olan accountlarin == id , name , type , phone larini getir

list<account>  accList = [SELECT Id, Name, Type, Phone  FROM Account WHERE Rating = 'Warm'];
system.debug(accList.size()); // 3

//  rating = Hot ve  AnnualRevenue  > 100 K  olanlari getir 

list<account>  accList = [SELECT Id, Name, Type, Phone  
                           FROM Account 
                           WHERE Rating = 'Hot' AND AnnualRevenue >100000  ];
system.debug(accList.size()); // 3

//  rating = Hot VEYA  AnnualRevenue  > 100 K  olanlari getir 

list<account>  accList = [SELECT Id, Name, Type, Phone  
                           FROM Account 
                           WHERE Rating = 'Hot' OR  AnnualRevenue >100000  ];
system.debug(accList.size()); // 8



// ******* DATA BINDING **********
/*
WHERE fieldName =: variable
WHERE fieldName IN: variable // genelde listeler icin kullanilir 
WHERE fieldName LIKE variable  // birazdan anlatilacak  
*/

string rating ='Hot';

list<account>  accList = [SELECT Id, Name, Type, Phone  
                          FROM Account 
                          WHERE Rating = :rating  ];
system.debug(accList.size()); // 3


list<string> aranacaklar = new List<string>();
aranacaklar.add('Hot');
aranacaklar.add('Warm');

list<account>  accList = [SELECT Id, Name, Type, Phone  
                          FROM Account 
                          WHERE Rating IN :aranacaklar ];
system.debug(accList.size()); // 6


// type Customer - Direct olanlari liste olarak getiriniz
//1.yontem
list<account>  accList = [SELECT Id, Name, Type, Phone  
                           FROM Account 
                           WHERE Type = 'Customer - Direct' ];

system.debug(accList.size());// 7

// 2. yontem
string tipp ='Customer - Direct';

list<account>  accList = [SELECT Id, Name, Type, Phone  
                          FROM Account 
                          WHERE Type = :tipp  ];
system.debug(accList.size()); // 7

// 3. yontem

list<string> aranacaklar = new List<string>();
aranacaklar.add('Customer - Direct');


list<account>  accList = [SELECT Id, Name, Type, Phone  
                          FROM Account 
                          WHERE type IN :aranacaklar ];
system.debug(accList.size()); // 7 


// WHERE fieldName LIKE variable  // birazdan anlatilacak 







