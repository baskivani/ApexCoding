// SOQL ornekleri ve security ayarlari
public with sharing class SOQLOrnekleri {
// RECORD LEVEL SECURITY ( SHARING RULES )
 // with sharing,   >>>>> SHARING RULES AKTIF  
 // without sharing,  >>>>> SHARING RULES DEAKTIF  
 //  and inherited sharing   >>>>> SHARING RULES parenttaki sharing rules aktif    
// https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_keywords_sharing.htm  
    
    
  
    
  // object ve field level security  
    // WITH SECURITY_ENFORCED
    // // https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_with_security_enforced.htm
    public list<Contact> contactlarVeAccountlari(){
    // 1. yontem    
       /* list<Contact>   cntList = [SELECT Id, Name,
                                   Account.Name
                                    FROM Contact
                                   WITH SECURITY_ENFORCED ];
   */
    // 2. yontem    
        
     string sorgu =  'SELECT Id, Name, Account.Name   FROM Contact WITH SECURITY_ENFORCED'; 
        
   list<Contact>   cntList =  database.query( sorgu  );  
        return cntList;
    } 
    
   public String contactVeAccount(String cntId){
      // burasi sadece contagin accountun adini donsun 
     
       Contact  cnt = [SELECT Id, Name,
                                   Account.Name
                                    FROM Contact
                                  WHERE Id =: cntId ];
       
       string accName= cnt.Account.Name;
       
       return accName;
    }   
 
    
    public List<account> accountlariVeContactlari(){
        
      List<account>  accList= [SELECT id,name,
                              (SELECT Id, Name FROM Contacts) 	
                              FROM account];
    
      return accList;
    }   
    
   public STATIC List<account> accVeContactlari(string accId){
       
      List<account>  accList= [SELECT id,name,
                              (SELECT Id, Name FROM Contacts) 	
                              FROM account 
                              WHERE id =: accId ];
    
      return accList;
    }   
     
}