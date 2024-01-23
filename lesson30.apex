// Unite Sonu Ornek Sorular 
public class OrnekSorular {
/*  ornek 1 
 // ISTEDIGINIZ SAYIDA CONTACT RECORDUNU OTOMAIK OLARAK OLUSTURAN BIR KOD YAZINIZ
// CONTACT ISIMLERI  CNT 1 , CNT 2 SEKLINDE OLSUN
// CONTACT ACCOUNTU OLARAK DA ISTEDIGINIZ BIR ACCOUNTU SECINIZ
*/
    public static list<contact> createContacts(integer cntSayisi){
        list<contact> cntList = new List<contact>();
        
       // SELECT Id, AccountId, LastName, FirstName FROM Contact  
       // bu query isime sadece field name ler icin yariyor  yokda bir ise yaramiyor 
        for(integer i=0 ; i<cntSayisi ; i++){
          contact cnt = new Contact(); 
            cnt.FirstName = 'AAA gene point';
            cnt.LastName = 'cnt ' + i ;
            cnt.AccountId = '001Hu00002xfONBIA2';   //  bu id genepoint isimli accountun id si 
            
            cntList.add(cnt);
        }
        //  INSERT cntList;
        return cntList;
       // BITTI  
    }
 
    public static list<contact> createContactsWithAccount(integer cntSayisi , string accName){
        list<contact> cntList = new List<contact>();
     
        Account acc = new Account();
        
        try{
             string filtre = '%'+accName+'%' ;
            acc = [SELECT Id , name FROM Account WHERE Name LIKE : filtre]; 
             system.debug(' account adi >> ' + acc.Name); 
            
        } catch(Exception e){
            
            system.debug('Malesef  ' + accName + ' adli bir account yoktur'); 
                
        }
       
       
        for(integer i=0 ; i<cntSayisi ; i++){
          contact cnt = new Contact(); 
            cnt.FirstName = 'AAA gene point';
            cnt.LastName = 'cnt ' + i ;
            if ( acc.id != null){
               cnt.AccountId = acc.id ;    
            }
           
            
            cntList.add(cnt);
        }
        //  INSERT cntList;
        return cntList;
       // BITTI  
    }
 

// bütün contactlardan emaili olmayanlara email olarak wisequarter@wisequarter.com ekleyelim. 

public static list<contact> emailCreate (){
    List<Contact> cntList = [SELECT Id, Name, Email FROM Contact WHERE Email = null];
         
   /* 
    integer cntSayi=cntList.size();
    for (integer i=0; i < cntSayi; i++){
        
         cntList[i].Email='wisequarter@gmail.com';
        
        }
    */
    
    if ( cntList.size()>0    ){
      
        for (Contact cnt :  cntList){
        cnt.email= 'wisequarter@gmail.com';
          } 
    
         update cntList;
        
    }
     
            return cntList;
    }
    
 
// annual revenue 500.000 in üzerinde olan account lerin 
// rating ini hot olarak update eden kod??? olabilir mi?    
  
    public static integer accountRatingUpdate(){
        
        list<account> accList = [SELECT id, name , rating FROM account WHERE AnnualRevenue > 500.000];
      system.debug(accList);
        integer count =0;
        
        if (accList.size() >0 ){
       // eger accList icerisinde eleman varsa count artik bu eleman sayisina esit oldu     
       count=accList.size();  
            
        for (account acc : accList){
            acc.Rating='Hot';
        }
        update accList;
            
           }
        // her halukarda count sayisi doner bazan sifir bazan liste eleman sayisi kadar
        return count;
    }
    
    
    
//  opp  eger close olmamis ve close date 5 gun var ise  description kismina ' HA GAYRET ' yaziniz

    public static VOID oppKontrol(){
        
        // SELECT CloseDate, StageName, Id, Name FROM Opportunity
       
        date bugun = date.today();
       // system.debug(bugun); // 2024-01-23 00:00:00 // bugun.addDays(-5)
        list<opportunity> oppList = [SELECT id , Name ,CloseDate, StageName , Description FROM Opportunity WHERE IsClosed = false ];
        
        for(opportunity opp : oppList ){
   
            Integer gunFarki = opp.closeDate.daysBetween(bugun);
            
       
            if( bugun.addDays(-5) <   opp.closeDate  ){
                
                opp.Description = ' Hadi bakalim son '+ gunFarki   +' gun kaldi';
            }
            
        }
     //  database.update(oppList, false); 
        system.debug(oppList[1]);
        
    }
  
     // husnu hocaim cevabi
     public static string wornOnDescription() {
        Date closeDateBesGun = Date.today().addDays(5);
       
         List<Opportunity> oppList = [
            SELECT Id, Name, Description, CloseDate
            FROM Opportunity
            WHERE IsClosed  = False
            AND CloseDate = :closeDateBesGun
        ];
       
         system.debug(oppList.size());
        String note = 'duzeltilecek opp YOK!!!';
         if (oppList.size() > 0 ){
           
             note='Ha gayret az kaldi!!';
             for(Opportunity opp : oppList) {
                opp.Description = note;
               }
            update oppList; 
             
         }
       
        return note;
    }   
    
    
}
    
    


