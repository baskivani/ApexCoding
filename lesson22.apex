// DML Ornekleri  Insert, Update, Delete, Undelete, Upsert
public class DMLOrnekleri {

// DATA MANIPULATION LANGUAGE
    //   INSERT   === > yeni kayit olustur
    //   UPDATE   === >  var olan kayidi guncelle ( edit )
    //   DELETE   ====>  var olan kayidi sil
    //   UNDELETE ===>>  silinmis ve COP TENEKESINDE  olan kaydi kurtar ( restore)
    //   UPSERT   ===>>  update + insert  = UpSert  eger kayit varsa update eder  kayit yoksa sifir kayit olusturur
// https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_database.htm   
   
 // SaveResult Class
 // https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_database_saveresult.htm#apex_methods_system_database_saveresult   
    
 
    public static VOID accOlustur(String accIsim,string accRating  , string tel    ){
        
        
        Account yeniRecord = new Account();

        yeniRecord.name = accIsim;
        yeniRecord.Rating = accRating;
        yeniRecord.phone = tel;
        
        insert yeniRecord;  
        
        
    }


    public STATIC INTEGER accListOlustur(integer accSayisi , string accIsmi    ){
 // bulkify

// governer limit  
//   
  list<account> accList = new List<account>();
    for(integer i=0 ; i< accSayisi ; i++      ){
       Account yeniRecord = new Account();
    
            yeniRecord.name = accIsmi + ' ' + i ;
            yeniRecord.Rating = 'Hot';
          accList.add(yeniRecord);  
        
    }
    
    insert accList;

   return   accList.size();   
        
    }


    
    public static VOID deleteAllRecords(string silinecekler){
        
    // 1. yontem    
    /* list<account> accList = [SELECT Id, Name, Type, Phone
                           FROM Account
                           WHERE name LIKE : silinecekler];
*/

     string sorgu =  'SELECT Id, Name, Type, Phone FROM Account WHERE name LIKE : ' + silinecekler;  
     list<account> accList =  database.query(sorgu); 
        
     delete accList;   
        
    }  
    
    
    //  id si verilen accountu sil
   public static VOID deleteOneRecord(string accId){
        
   account acc = new Account();
  if (accId != null && (accId.length() == 15 || accId.length() == 18)) {      
       acc = [ SELECT Id, Name, Phone
                        FROM Account 
                        WHERE ID =: accId    ];
  }
      
if (acc.id != null) {

    database.delete(acc );
    System.debug('Hesap başarıyla silindi.');
}else {
        // Hesap bulunamazsa hata mesajı
        System.debug('Hesap bulunamadı. Silme işlemi gerçekleştirilemedi.');
    }

        /*
   
// Hesap sorgulama
    List<Account> accList = [SELECT Id, Name, Phone FROM Account WHERE Id = :accId ];

    // Hesap bulundu mu kontrolü
    if (accList != null && !accList.isEmpty()) {
        // Hesap silme işlemi
        Account acc = accList[0];
        Database.delete(acc);
        System.debug('Hesap başarıyla silindi.');
    } else {
        // Hesap bulunamazsa hata mesajı
        System.debug('Hesap bulunamadı. Silme işlemi gerçekleştirilemedi.');
    }
*/
   
        
    }  

    //   UNDELETE ===>> 
  
    public static VOID undeleteMethodu(string accName){
   // SELECT  name FROM  account WHERE name LIKE '%wise%'
   string keyWord=   '%'+accName+'%' ;

       
 List<account> accList = [SELECT  name FROM  account WHERE name LIKE :  keyWord ALL ROWS ];     
   undelete accList;      
   /*     
list<account> accList = [ SELECT id FROM account WHERE name = : accName ALL ROWS]; 
        
        
        undelete accList;
        */
    }  
    
  
    public static VOID updateRecord(string accId){
       account accRecord = [SELECT  name FROM  account WHERE ID =:  accId ];         
        
        accRecord.Name= 'WISE UPDATED';
        update accRecord;
        
    }
    
    
   
    
   // upsert    
    public static VOID upsertMethodu(string accId){
        account accRecord = [SELECT  name FROM  account WHERE ID =:  accId ];         
        
        accRecord.Name= 'WISE UPDATED @@@@@';
        
    account accYeni = new Account();
        accYeni.Name=' AAA Upsert ile olustu @@@@@';
        
       list<account> accList = new List<account>();
        accList.add(accRecord);
        accList.add(accYeni);
        
        
        upsert accList;
        
        
        
    }
    
    
    
    
    
}