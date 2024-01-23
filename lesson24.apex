// SOSL Ornek
public class SOSLOrnek {
     // Salesforce Object Search Language
   // https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_sosl.htm 
   // https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_sosl_syntax.htm#sforce_api_calls_sosl_syntax 
   // https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_sosl_examples.htm#sforce_api_calls_sosl_examples 
    
   
   // syntax 
 //   Find {edge} 
 //   SOQL wildcard  SOSL wild card
 /*   
    %       ==    *
    _        ==    ? 
*/
// Find {edge*}

   // SELECT id        FROM account
// Find {edge*} RETURNING account   // sadece account icerisinde arar 
// Find {edge*} RETURNING account , contact  // hem account hem contact

// Find {edge*} RETURNING account ( name , phone)
//  account objesinden name ve phone
 
// Find {Uni*} RETURNING account ( name , phone LIMIT 1)
    
// ( name , phone LIMIT 1)  ==> normal SOQL gibi calisir    
    
// Find {Uni*} RETURNING account ( name , phone LIMIT 1) , contact(Title)     
    
    
    public static VOID soslMethodu(String filtre){
     string keyword =  filtre+'*' ; 
     string sorgu = 'Find {' +keyword+   '} RETURNING account ( name ,phone , fax ) , contact , opportunity';   
    /*
String searchStr1 = '*'+searchStr+'*';
 String searchQuery = 'FIND \'' + searchStr1 + '\' IN ALL FIELDS RETURNING  Account (Id,Name,type),Contact(name,email),Opportunity(name,StageName)';

//    'FIND {' + searchStr1 + '}

   List<List <sObject>> searchList = search.query(searchQuery);
*/     
    List< LIST<sObject>  > sonuc= search.query(sorgu);              
     
        list<account> accList = (list<account>)sonuc[0];
        system.debug('accList size ' + accList.size()); // accList size 1
       
        system.debug( accList[0].name  ); // Edge Communications
        
        
        
        list<contact> cntList = (list<contact>)sonuc[1];
        //system.debug('cntList size ' + cntList.size()); // cntList size 2
          
      list<opportunity> oppList = (list<opportunity>)sonuc[2];  
       //system.debug('oppList size ' + oppList.size()); // oppList size 4
        
    }
    
  /*
   // A SOSL query with binds in all possible clauses

String myString1 = 'aaa';
String myString2 = 'bbb';
Integer myInt3 = 11;

Integer myInt5 = 22;

List<List<SObject>> searchList = [FIND :myString1 IN ALL FIELDS 
                                  RETURNING 
                                     Account (Id, Name WHERE Name LIKE :myString2
                                              LIMIT :myInt3), 
                                     Contact, 
                                     Opportunity, 
                                     Lead 
                                 
                                  LIMIT :myInt5];

*/
    
    
    
    
    
}
    
    
    
    
    
