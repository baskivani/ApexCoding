
// DML Ornekleri 2
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
        
        
     list<account> accList = [SELECT Id, Name, Type, Phone
                           FROM Account
                           WHERE name LIKE : silinecekler];


     delete accList;   
        
    }  
    
    
    //  id si verilen accountu sil
   public static VOID deleteOneRecord(string accId){
        
       account acc = [SELECT Id, Name
                           FROM Account
                           WHERE id =: accId];


     delete acc;   
        
    }  

    
    
}







//////  ANONYMOUS window

*********** bu kisimda pek bir konu yok  sadece class da olan methodlari cagirdik      ********** 

// DATA MANIPULATION LANGUAGE
    //   INSERT  ==== >  yeni kayit olustur
    //   UPDATE   === >  var olan kayidi guncelle ( edit )
    //   DELETE   ====>  var olan kayidi sil
    //   UNDELETE ===>>  silinmis ve COP TENEKESIN    olan kaydi kurtar ( restore)
    //   UPSERT   ===>>  update + insert  = UpSert  eger kayit varsa update eder  kayit yoksa sifir kayit olusturur



Account yeniRecord = new Account();

yeniRecord.name = 'AAA developer olusturdu *****';
yeniRecord.Rating = 'Hot';
yeniRecord.phone = '436 382A';

insert yeniRecord;
database.insert(yeniRecord);
database.insert(yeniRecord , true);
database.insert(yeniRecord , false);


DMLOrnekleri.accOlustur('AAA paremetreli acc');

DMLOrnekleri.accOlustur('AAA yeni record', 'xxxx' , 'AAA 2344456'   );


// BU YANLIS .. BUNU yapmayin
// bulkify


// governer limit


DMLOrnekleri.accListOlustur(23 ,'AAA xxxx'   );


//   DELETE   ====>  var olan kayidi sil
//  ya silecegim recordalarin ID leri veya recordlarin kendileri gerekli

// soru >  bas harleri AAA ile baslayan tum recordlari getiren SOQL yaziniz

list<account> accList = [SELECT Id, Name, Type, Phone
                           FROM Account
                           WHERE name LIKE 'AAA%'];


delete accList; //  data


DMLOrnekleri.deleteAllRecords('AAA%');

// 001Hu0000347A1zIAE
DMLOrnekleri.deleteOneRecord('001Hu0000347A1zIAE');