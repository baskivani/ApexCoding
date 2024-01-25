// Unite Sonu Ornek Sorular 

//Listede bulunan sayıların kac tane oldugunu gosteren uygulama, burada ozellikle map kullanildi
public class OrnekSorular {
public static void soru(){
List<Integer> myList = new List<Integer>{12, 21, 12, 13, 12, 21, 35};
  Map<Integer, Integer> myMap = new Map<Integer, Integer>();
    for(Integer w : myList){
        Integer numOfOccurence = myMap.get(w);
        if(numOfOccurence==null){
            myMap.put(w, 1);
        }else{
            myMap.put(w, numOfOccurence+1);
        }
    }
    }
/**************************************************************** */

// Industry'de hangi sektorde kac defa closeWon oldugunu gosteren kodlama

    public static void cevap(){
List<account> accList = [SELECT id ,name, Industry , (SELECT ID, amount FROM opportunities WHERE iswon=true) FROM account ];
Map<string, integer> endustriFirsatlari = new Map<string, integer>();
        for(account acc : accList ){
            if(acc.opportunities.size() >0 ){
                for( opportunity opp:  acc.opportunities  ) {
                system.debug(acc.name + ' >> '+ opp.amount);
               Integer numOfOccurence = endustriFirsatlari.get(acc.Industry);
                if(numOfOccurence==null){
                    endustriFirsatlari.put(acc.Industry, 1);
                }else{
                    endustriFirsatlari.put(acc.Industry, numOfOccurence+1);
                }
              }
            }
         }
        system.debug(endustriFirsatlari);
// {Agriculture=1, Biotechnology=2, Electronics=4, Energy=5, Hospitality=3, Transportation=1}
      }

      /************************************************************ */

// task >>  accounta ait opp amountlarini toplayarak
// account uzerinde evvelden olusturmus oldugunuz
// opp amount Total isimli bir fielda koyunuz
public static VOID totalOppAmount(){
		MAP<ID, account> accMap = new Map<ID, account>();
            try{
         accMap = new Map <ID, account>([SELECT id, OppToplamAmount__c  ,
                                          (SELECT Id, Amount   FROM opportunities)
                                            FROM account]);
        }catch(Exception e){
            system.debug('MAP de problem var ');
        }
       list<account> updateEdilecekListe= new List<account>();
      if (accMap != null){
        SET<id> accIdleri = accMap.keySet();
          //system.debug(accIdleri);
            for(ID accId : accIdleri ){
          account  acc = accMap.get(accId);
              //system.debug(acc);
              list<opportunity> oppList =  acc.opportunities;
                decimal totalAmount=0;
                if (oppList.size()>0 ){
                       for(opportunity opp : oppList ){
                           if(opp.amount>0){
                               totalAmount= totalAmount + opp.amount;
                           }
                       }
                    acc.OppToplamAmount__c = totalAmount;
                   updateEdilecekListe.add(acc);
                }
    }
          try{
                  // update updateEdilecekListe;
             system.debug(updateEdilecekListe);
          }catch(Exception e){
            system.debug('UPDATE problem cikti');
          }
        }
    }

    /****************************************************************** */
// Yukaridaki problemin Resul Hoca tarafından yapılan cozumu
    public Static Void oppMiktari(){
   List<Account> hesaplar = [SELECT name , Toplam_Opp_Miktari__c, (SELECT ID, amount FROM opportunities )  FROM Account  ];
    Map<Id,Account> hesaplarMappi = new Map <Id,Account> ( hesaplar);
  list<account> yenilenmisListe = new List<account>();
 Set<Id> accIdSet= hesaplarMappi.keySet();
        for(Id accId : accIdSet){
            list<opportunity> oppList = hesaplarMappi.get(accId).opportunities;
            decimal oppToplam=0;
                if(oppList.size() > 0 ){
                    for(opportunity opp :  oppList   ){
                        if(opp.Amount >0 ){
                            oppToplam = oppToplam + opp.Amount;
                        }
                  }
              account acc= hesaplarMappi.get(accId);
              acc.Toplam_Opp_Miktari__c = oppToplam;
              yenilenmisListe.add(acc);
                }
        }
       //update yenilenmisListe;
       system.debug(yenilenmisListe);
    }

    /******************************************* */

    // dilber hanim Bu yontemde sadece list kullanilarak cozuldu
  public static void topAmounts(){
list<Account> accList = new List<account>();
      try{
          accList = [SELECT Id, Name, (SELECT Id, AccountId, Name, Amount FROM Opportunities) FROM Account];
      } catch(exception e){
          system.debug(' sorguda problem var');
      }
      if ( accList.size()> 0){
            for(Account acc : accList){
              decimal updatedAmount =0;
                    for(Opportunity opp : acc.opportunities){
                        if ( opp.Amount > 0){
                            updatedAmount = updatedAmount  + opp.Amount;
                        }
                    }
              acc.Toplam_Opp_Miktari__c = updatedAmount;
            }
          try{
             update accList;
          } catch(exception e){
               system.debug(' update de problem var');
          }
      }
  }
// Contact'ta bir Type field i olusturarak, Account'taki Type field degerini bu contact type ine atamak
  public static void addContType(){
        list<contact> cntList = new list<contact>();
        list<account> accList = [SELECT Id, Name , type  , (SELECT ID , accType__c FROM contacts )   FROM account];
        for(account acc : accList){
            for(contact cnt : acc.contacts    ){
                cnt.accType__c = acc.Type;
                   cntList.add(cnt);
            }
        }
       //update cntList;
       system.debug(cntList);
    }
}