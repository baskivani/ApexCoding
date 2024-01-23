// childdan parenta query
list<opportunity>   oppList = [SELECT Opportunity.Id, Opportunity.Name,
                               Account.Name, Account.rating
                               FROM Opportunity];
system.debug(oppList.size()); // 47
system.debug(oppList);
/*
(Opportunity:{Id=006Hu00001WWJoWIAX, Name=new opp with new record type,
RecordTypeId=012Hu000001DwebIAC}
*/
for( opportunity  opp:   oppList ){
    //system.debug(opp); // {Id=006Hu00001WWJoWIAX, Name=new opp with new record type, RecordTypeId=012Hu000001DwebIAC}
    //system.debug(opp.Account.Name); // Farmers Coop. of Florida
system.debug( opp.name +' nin accountunun ismi >> ' + opp.Account.Name + '. Rating >> '+ opp.Account.rating   );
// Farmers Coop. of Florida- nin accountunun ismi >> Farmers Coop. of Florida rating >> Hot
}


// Custom objectte childdan parenta query
list<Student__c>   oppList = [SELECT Id,name, First_Name__c ,
                               Parent__r.gender__c, Parent__r.Name
                               FROM Student__c];

// Parent__c   bu calismaz
// Parent__r   bu r  relation 


// PARENT dan CHILD objecte query

SELECT id, name  ,  ( SELECT Id, Name FROM Opportunities  )   FROM account


//  account ile contacts   querysini yaziniz
SELECT id,name,(SELECT Id, Name FROM Contacts) 		from account

list <account> accList= [SELECT id, name  , 
                         ( SELECT Id, Name FROM Opportunities  )   
                         FROM account];

//system.debug(accList);
// Account:{Id=001Hu00002xfONBIA2, Name=GenePoint}

for ( account  acc : accList ){
    
    for(  Opportunity  opp :  acc.Opportunities     ){
        
        system.debug(acc.name+ ' accountun oppsi >> '+ opp.name);
        
    }
}

// CUSTOM parenttan custom Child
list <Parent__c> prnList= [SELECT id, name , 
                         ( SELECT Id, Name FROM Students__r  )   
                         FROM Parent__c];


for( Parent__c  prnt : prnList     ){
    for(Student__c  stn: prnt.Students__r      ){
        
       system.debug( prnt.name + ' adli parentin childi ' + stn.Name ); 
    }
      
}

/// MAP ile ayni isi yapmak

List <account> accList= [SELECT id, name  , 
                         ( SELECT Id, Name FROM Opportunities  )   
                         FROM account];

MAP<ID, account> accMap = new Map<ID, account>( [SELECT id, name  , 
                         ( SELECT Id, Name FROM Opportunities  )   
                         FROM account]   );

// 001Hu00002xfONAIA2 ==> United Oil & Gas Corp IDsi
   
list<opportunity> oppList= accMap.get('001Hu00002xfON6IAM').Opportunities; 
 system.debug(oppList.size()); // 10
    

// United Oil & Gas Corp  un opp lerini ekranda gosterin
// odev  bu soruyu bir de list yontemi ve for each ile cozunuz


// SOQL detay kismi 
// bu kismin varlogini bilmeniz ve ihtiyac halinde gerkeli yardim alinir

//  ****  AGGREGATE (KUMELESMIS)  FUNCTIONLAR  

// MIN(), MAX(), COUNT() , AVG() , SUM()  bunlar bir cok data alip sadece 1 data doner 

list<account> accList = [SELECT name ,   numberofemployees FROM Account   
                               WHERE numberofemployees >500];
for( account acc : accList ){
    
    system.debug(acc.name + ' hesanin calisan sayisi ' + acc.numberofemployees);
}

system.debug( 'COUNT >>> ' + [SELECT   COUNT(numberofemployees) FROM Account   
                               WHERE numberofemployees >500]);
// COUNT >>> (AggregateResult:{expr0=9}) 
//9 adet accountun calisan sayisi 500 den yuksekmis


system.debug(' Max >>  ' + [SELECT   MAX(numberofemployees) 
                            FROM Account   WHERE numberofemployees >500  ]);
// Max >>  (AggregateResult:{expr0=145000})

// eger brup olarka almak istersek GROUP BY kullanilmasi gerek  
[SELECT industry ,  COUNT(name) FROM Account  GROUP BY  industry ]

system.debug(' COUNT >>  ' + [SELECT industry,  MAX(numberofemployees) FROM Account GROUP BY  industry ]);



// AGGREGATE WHERE ile CALISMAZ
SELECT Industry, COUNT(numberofemployees) FROM Account GROUP BY Industry  
    WHERE COUNT(numberofemployees)>1

    
  // AGGREGATE HAVING  ile CALISIR  

system.debug(' COUNT >>  ' + [SELECT Industry, COUNT(Name) 
                              FROM Account 
                              GROUP BY Industry  
                              HAVING COUNT(name)>1 ] );


// AGGREGATE depolamk isterseniz LISTE ile OLMAz

AggregateResult[] aggResult  =  [SELECT Industry, AVG(NumberOfEmployees) 
                                			 FROM Account
                                            GROUP BY Industry];

    for (AggregateResult  w : aggResult ) {
            
            System.debug('Insdustry is : ' 
                         + w.get('Industry') + ' --> avarage number of emloyees is  ' 
                         + w.get('expr0') );
        }


AggregateResult[] aggResult  =  [SELECT Industry, AVG(NumberOfEmployees) ortalama 
                                			 FROM Account
                                            GROUP BY Industry];

    for (AggregateResult  w : aggResult ) {
            
            System.debug(': ' 
                         + w.get('Industry') + ' --> avarage number of emloyees is  ' 
                         + w.get('ortalama') );
        }



AggregateResult[] aggResult=  [SELECT 
                               MIN(NumberOfEmployees),
                               MAX(NumberOfEmployees) , 
                               AVG(NumberOfEmployees) 
                               FROM Account];
        

System.debug('Min number of employees: ' + aggResult[0].get('expr0')); // burasi MIN getirir     Min number of employees: 120
System.debug('Max number of employees: ' + aggResult[0].get('expr1')); // burasi MAX getirir     Max number of employees: 145000
System.debug('Avg number of employees: ' + aggResult[0].get('expr2')); // Burasi AVG getirir     Avg number of employees: 21996.81818181818


AggregateResult[] aggResult=  [SELECT 
                               MIN(NumberOfEmployees) minimum,
                               MAX(NumberOfEmployees) maximum, 
                               AVG(NumberOfEmployees) 
                               FROM Account];
        

System.debug('Min number of employees: ' + aggResult[0].get('minimum')); // burasi MIN getirir     Min number of employees: 120
System.debug('Max number of employees: ' + aggResult[0].get('maximum')); // burasi MAX getirir     Max number of employees: 145000
System.debug('Avg number of employees: ' + aggResult[0].get('expr0')); // Burasi AVG getirir     Avg number of employees: 21996.81818181818



// **   SIRALAMA ------>  ORDER BY   ASC-- artan ,,       DESC-- azalan

 List<Account> siraliAccount = [SELECT  name , AnnualRevenue  FROM   Account  
                           
                                    ORDER BY AnnualRevenue DESC   NULLS LAST  ]; 
      
FOR(Account  acc : siraliAccount  ){
    
    system.debug(acc.Name + ' yillik ciro == >' +   acc.AnnualRevenue);
    
}   



 SELECT  name , AnnualRevenue  FROM   Account  WHERE  AnnualRevenue != null  ORDER BY AnnualRevenue DESC  
//  where kullancaksak    where order by dan once gelmelidir    


     //  sorguyu sinirla ----->   LIMIT    OFFSET
     //   offset  limitten sonra yazilir
      //  OFFSET   demek  bu kadar recirdu passgec 
      // LIMIT   sadece sana verdigim rakam kaar record getir
     
   List<Account> siraliAccount = [ SELECT  name , AnnualRevenue  
                                  FROM   Account    
                                  ORDER BY AnnualRevenue DESC  
                                  NULLS LAST   
                                  LIMIT 2 OFFSET 3];

FOR(Account  acc : siraliAccount  ){
    
    system.debug(acc.Name + ' yillik ciro == >' +   acc.AnnualRevenue);
    
}   



//  DATE ile alakali query 

SELECT name, SLAExpirationDate__c FROM Account WHERE SLAExpirationDate__c > 2021-10-08     
     
// DATE-TIME degiskenli feildlar

SELECT name, CreatedDate FROM Account WHERE CreatedDate > 2020-10-08T23:59:59Z  
