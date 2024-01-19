//  SET  
// SET olusturma sekli
SET<integer> sayilar = new SET<integer>();
sayilar.add(5);
sayilar.add(78);
sayilar.add(19);
sayilar.add(78);
system.debug(sayilar); // {5, 19, 78}
// 2. yontem 
SET<integer> sayilar = new SET<integer>{2,5,76 , 2};
    system.debug(sayilar); // {2, 5, 76}
list<integer> sayilar = new list<integer>{2,5,76 , 2};
system.debug(sayilar); // (2, 5, 76, 2)
// bir listeden set olusturmak
Set<Integer> set1 = new Set<Integer>(sayilar);   
  system.debug(set1);  // {2, 5, 76}
// SOQL ile SET olusturma
list<account> accList = [SELECT id , Name , rating FROM account];
system.debug(accList);
Set<account> set1 = new Set<account>(accList);
  system.debug(set1); 
//  set yapisinda index olmadigi icin 
//   for loop yapilamaz 
// bu yuzden SET yapisinda sadece FOR EACH kullanilir
SET<integer> sayilar = new SET<integer>{2,5,76 };
///system.debug( sayilar[0] );   SET de index yoktur
for (integer sy : sayilar    ){
    
    system.debug(sy);
}
//  verilen listede eger 9 sayisi yok ise sadece bir defa 9 ekleyiniz
// eger 9 sayisi listede var ise  'listede 9 sayisi var deyiniz'
list<integer> sayilar = new list<integer>{2,5,76};
    system.debug(sayilar.size());
// 1. cozum 
    if ( sayilar.contains(9) ){
        system.debug('LISTEDE 9 VAR');
        return; // kodu burda durdur
    }else {
        sayilar.add(9);
        
    }
system.debug('SONRA >> ' + sayilar.size());
// 2.cozum   LOOP  ile 
list<string> sayilar = new list<string>{2,9,76};
system.debug('ONCE>> '+ sayilar);
integer count =0;
    for (integer i = 0 ; i< sayilar.size() ; i++ ){
       
        if (sayilar.get(i) ==9 ){
            count = count +1 ;
        }
        
    }
if ( count == 0){
    sayilar.add(9);
}else if ( count !=0){
    system.debug( 'Listede  >> '+ count +' adet 9 var');// Listede 9 1 adet var
}
system.debug('SONRA  >> '+ sayilar); 
// 
// liste icerisindeki elemanlar unique mi degil mi 
List<Integer> sayilar = new List<Integer>{2,67,9,4 , 9 };
// 1. cozum  SET ile list karsilastir
Set<integer> setSekli = new Set<integer>(sayilar); 
if( sayilar.size() == setSekli.size() ){
    system.debug(' LISTE elemanlari unique');
}else {
    
    system.debug(' LISTE elemanlari unique DEGIL'); 
}
// 2. cozum  IC ice LOOP ile coz
List<Integer> sayilar = new List<Integer>{2,67,9,4 , 9 , 4 };
    for (integer i = 0 ; i<sayilar.size() ; i++ ) {
       
        for ( integer k = i+1   ; k <  sayilar.size() ; k++         ){
            if (sayilar.get(i) == sayilar.get(k) ) {
                
            system.debug(' elemanlar unique degil'   );                
            }
        }       
    }
//  bol miktarda resoruce tuketir

//  MAP
// sozluk gibidir
    1 >>> one
    2 >>> two 
    9 >>> nine
    3 >> three
    7 >> seven
    
// Map< key , value > myMap = new Map< key , value >();
 Map< integer , string > myMap = new Map<integer , string>();
system.debug(  myMap); // {}
myMap.put( 1 ,  'one'  );
system.debug(  myMap);  // {1=one}
myMap.put( 2 ,  'two'  );
system.debug(  myMap);   // {1=one, 2=two}
myMap.put( 9 ,  'nine'  );
myMap.put( 3 ,  'three'  );
myMap.put( 7 ,  'seven'  );
system.debug(  myMap);  // {1=one, 2=two, 3=three, 7=seven, 9=nine}
  one   >>  1 
  two   >>  2   
  nine  >>  9 
  three >>  3
  seven >>  7 
Map< string, integer > myMap = new Map< string, integer>();
myMap.put('one' , 1 );
myMap.put('two' , 2);
myMap.put('nine' ,9);
myMap.put('three' , 3 );
myMap.put('seven' , 7 );
system.debug( myMap );
// {nine=9, one=1, seven=7, three=3, two=2}
// {Three=3, nine=9, one=1, seven=7, two=2}
Map< string, integer > myMap = new Map< string, integer>();
myMap.put('one' , 1 );
myMap.put('two' , 2);
myMap.put('nine' ,9);
myMap.put('three' , 3 );
myMap.put('seven' , 7 );
system.debug( myMap ); // {nine=9, one=1, seven=7, three=3, two=2}
myMap.put('nine' ,9999);
system.debug( myMap ); // // {nine=9999, one=1, seven=7, three=3, two=2}
myMap.put('seventeen' , 7 );
system.debug( myMap ); 
// {nine=9999, one=1, seven=7, seventeen=7, three=3, two=2}
//  mapde diret olarak LOOP yapamazsiniz
// list   get ( index )
// get(key)
Map< string, integer > myMap = new Map< string, integer>();
myMap.put('one' , 1 );
myMap.put('two' , 2);
myMap.put('nine' ,9);
myMap.put('three' , 3 );
myMap.put('seven' , 7 );
system.debug(  myMap.get('nine')  ); // 9
system.debug(  myMap.get('dfgergterte')  ); // null
// keySet()   //   icersinde SET var 
Map< string, integer > myMap = new Map< string, integer>();
myMap.put('one' , 1 );
myMap.put('two' , 2);
myMap.put('nine' ,9);
myMap.put('three' , 3 );
myMap.put('seven' , 7 );
SET<string> mapKeyleri =  myMap.keySet();
system.debug(mapKeyleri); // {nine, one, seven, three, two}
//values()
Map< string, integer > myMap = new Map< string, integer>();
myMap.put('one' , 1 );
myMap.put('two' , 2);
myMap.put('nine' ,9);
myMap.put('three' , 3 );
myMap.put('seven' , 7 );
List<integer> mapValulari = myMap.values();
system.debug(mapValulari); // (1, 2, 9, 3, 7)
// salesfroce database den sObject cagirma ve bunu MAPA kaydetme
Map<string, Account> accountMap = new Map<string, Account>([SELECT Id, Name , type , phone  FROM Account]);
SET<string> mapKeyleri =  accountMap.keySet();
//system.debug(mapKeyleri);  //   accountlarin IDleri gelmis olasmi gerek
/*
{
001Hu00002xLnbgIAC, 
001Hu00002xLrwOIAS, 
001Hu00002xfON1IAM,
001Hu00002xfON2IAM
...}
*/
List<Account> mapValulari = accountMap.values();
system.debug(mapValulari);
/*
(Account:{Id=001Hu00002xfONBIA2, Name=GenePoint, Type=Customer - Channel, Phone=(650) 867-3450}, 
Account:{Id=001Hu00002xfON9IAM, Name=United Oil & Gas, UK, Type=Customer - Direct, Phone=+44 191 4956203},
..
*/
List<Integer> myList = new List<Integer>{12, 21, 12, 13, 12, 21, 35};
// map kullanrak bir elemandan kac adet var 
12 >>  3 adet var
21 >>  2 adet var