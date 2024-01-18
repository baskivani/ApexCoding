
// liste olusturma sekli
list<integer> sayilar = new List<integer>();

sayilar.add(5);
sayilar.add(78);
sayilar.add(19);
system.debug(sayilar); // (5, 78, 19)

// 2. yontem 
List<integer> sayilar = new List<integer>{2,5,76};
    system.debug(sayilar); // (2, 5, 76)

// SOQL ile liste olusturma
list<account> accList = [SELECT id , Name , rating FROM account];
system.debug(accList);
/*
(
Account:{Id=001Hu00002xfONBIA2, Name=GenePoint, Rating=Cold}, 
Account:{Id=001Hu00002xfON9IAM, Name=United Oil & Gas, UK},

*/


/*
myList.add(integer)
myList.add(0, 'Jim');  // spesifik bir index e eklemek

myList.size();               // list eleman sayisi
     
myList.addAll(yourList);     // bir list icerisine bir list eklemek

myList.get(index);    myList[index]  // belirli indexdeki elamani getirmek
myGivenList.set(1,'AAAAA');  //  belirli indexteki elameani baska bir sey ile degistirmek
myList.remove(index);        // belirli indexten elamn cikarmak

myList.indexOf(5);           //  bir elemanin hangi indexte oldugunu bulmak
myList.sort();               //   listeyi siralamak

*/

// myList.add(integer)

list<integer> sayilar = new List<integer>();

sayilar.add(5);
sayilar.add(78);
sayilar.add(19);
system.debug(sayilar);  // (5, 78, 19)

// myList.add(index , value)
sayilar.add(1,99);
system.debug(sayilar); // (5,    99,    78,    19)


// myList.size();    liste icerisindeki eleman sayisini veirir
//  string. legnth()  benzer

list<string> isimler = new List<string> {'veli' ,'ali' ,'zeki'};

system.debug('size >>>>>> ' +isimler.size());  // size >>>>>> 3
integer index = isimler.size() -1 ;
system.debug('Last Index >>> ' + index); // lax Index >>> 2


// myList.addAll(yourList); 

list<string> isimler = new List<string> {'veli' ,'ali' ,'zeki'};
 system.debug(isimler);  // (veli, ali, zeki)  
list<string> yeniIsimler = new List<string> {'ahmet' ,'ali' ,'mehmet'};
 system.debug('ONCE yeniIsimler >>>> ' +yeniIsimler);
    
isimler.addall(yeniIsimler);    
   system.debug(isimler); // (veli, ali, zeki, ahmet, ali, mehmet)   
    
 system.debug('SONRA  yeniIsimler>>>> ' +yeniIsimler);    
     
    
    
// myList.get(index);    myList[index]  // belirli indexdeki elamani getirmek
// myGivenList.set(1,'AAAAA');  //  belirli indexteki elameani baska bir sey ile degistirmek
// myList.remove(index);        // belirli indexten elamn cikarmak
    
//   myList[index] 
//   myList[index] = 99
    

list<string> isimler = new List<string> {'veli' ,'ali' ,'zeki'};
system.debug(isimler.get(2) ); // 'zeki'   

system.debug(isimler[2]); // zeki    fazla kullnilir


//  myGivenList.set(1,'AAAAA');
list<string> isimler = new List<string> {'veli' ,'ali' ,'zeki'};
system.debug('ONCEKI isim Listesi >>> ' + isimler);
// ONCEKI isim Listesi >>> (veli, ali, zeki)

isimler.set(1,'HASAN');
system.debug('SONRAKI isim Listesi >>> ' + isimler);
// SONRAKI isim Listesi >>> (veli, HASAN, zeki)


// myList.remove(index); 
list<string> isimler = new List<string> {'veli' ,'ali' ,'zeki' , 'resul'};
system.debug('ONCEKI isim Listesi >>> ' + isimler);
// ONCEKI isim Listesi >>> (veli, ali, zeki, resul)

isimler.remove(3);
system.debug('SONRAKI isim Listesi >>> ' + isimler);
// SONRAKI isim Listesi >>> (veli, ali, zeki)


// myList.indexOf(eleman);           //  bir elemanin hangi indexte oldugunu bulmak
//  myList.get(index); 
list<string> isimler = new List<string> {'veli' ,'ali' ,'zeki' , 'resul'};
system.debug( isimler.indexOf('resul')); //  3
system.debug(  isimler.get(3)  );   // resul
system.debug(  isimler[3]  );      // resul


//  soru   son indexdeki elemani geitriniz
list<string> isimler = new List<string> {'veli' ,'ali' ,'zeki' ,'resul','Mahmut'};
integer index = isimler.size() -1 ;  
system.debug(  isimler.get(index)  );    // Mahmut   
    
system.debug(  isimler.get(isimler.size() -1)  );   // Mahmut   
system.debug(  isimler[index]  );                   // Mahmut
system.debug(  isimler[isimler.size() -1]  );       // Mahmut
    
    
    

// myList.sort();               //   listeyi siralamak

list<string> isimler = new List<string> {'veli' ,'ali' ,'zeki' ,'resul','Mahmut'};
system.debug('ONCEKI >>> ' + isimler);
// ONCEKI >>> (veli, ali, zeki, resul, Mahmut)

 isimler.sort();

system.debug('SONRAKI >>> '+ isimler); 
// SONRAKI >>> (Mahmut, ali, resul, veli, zeki)  
// stringler ASCII tablosauna gore siralnir


//  for each loop
list<string> isimler = new List<string> {'veli' ,'ali' ,'zeki' ,'resul','Mahmut'};
    
    //  for loop
  /*  for ( integer i =0 ; i < isimler.size()   ;  i++   ) {
        system.debug(  isimler.get(i)) ; 
        system.debug(' [i] ***** >> ' +  isimler[i] ) ; 
        
    }
*/

// for each   ( array , list , set )
for (string   sepet :  isimler   ){
    
    system.debug(sepet);
    
}
//  not >>>  eger listenin size degismiyorsa foraech kullanilir   
// eger dongu yapilirken array size degisiyorsa for loop kullnilir

// 'veli BEY' ,'ali BEY ' ,'zeki BEY ' ,'resul BEY ','Mahmut BEY'};

list<string> isimler = new List<string> {'veli' ,'ali' ,'zeki' ,'resul','Mahmut'};
list<string> yeniIsimler = new List<string>();
    
for (string   sepet :  isimler   ){
 
    string degismisIsim =  sepet + ' BEY';  // veli BEY ,, ali BEY
     yeniIsimler.add(degismisIsim);
    system.debug(yeniIsimler);
}

system.debug(yeniIsimler); // (veli BEY, ali BEY, zeki BEY, resul BEY, Mahmut BEY)
system.debug(isimler);


// 1. yontem
list<account> accList = [SELECT id, name , rating  FROM account];

for( account  acc : accList    ){
    
   system.debug(acc.NAME );   //  GenePoint
    
}

// 1. yaklasim
list<account> accList = [SELECT id, name , rating  FROM account];
list<account> yeniAccList = new List<account>();
    
for (account   acc :  accList   ){
 
   acc.name =  acc.Name + ' XXXX';  // 
     yeniAccList.add(acc);
   
}

system.debug(yeniAccList);
// (Account:{Id=001Hu00002xfONBIA2, Name=GenePoint XXXX, Rating=Cold}


// 2. yaklasim
list<account> accList = [SELECT id, name , rating  FROM account];
system.debug('ONCE>>>>> ' +accList);  
system.debug('ONCE SIZE>>>>> ' +accList.size()); 
//  (Account:{Id=001Hu00002xfONBIA2, Name=GenePoint, Rating=Cold}
for (account   acc :  accList   ){
   acc.name =  acc.Name + ' XXXX';  // 
 }

system.debug('SONRA >>>>> ' + accList);
system.debug('SONRA SIZE>>>>> ' +accList.size()); 
// SONRA >>>>> (Account:{Id=001Hu00002xfONBIA2, Name=GenePoint XXXX, Rating=Cold}


//  eger list size degisiyorsa orada FOR EACH olmaz
//  bu durumda for loop kullanilir

list<string> isimListesi = new List<string> {'veli' ,'ali' ,'zeki' ,'resul','Mahmut'};
system.debug('ONCE >> '+ isimListesi.size());  // 5
// listede ali varsda onu cikartin 
/*  FOR EACH LOOP EGER LISTE SIZE DEGISIYORSA CALISMAZ
    for( string  isim : isimListesi    ){
        
        if ( isim.equals('ali')   ){
            
       integer index=   isimListesi.indexOf('ali'); 
           isimListesi.remove(index);   
        }
        
    }
*/
for ( integer i =0 ; i< isimListesi.size() ; i++    ){
    
     if ( isimListesi[i].equals('ali')   ){
            
       integer index=   isimListesi.indexOf('ali'); 
           isimListesi.remove(index);   
        }
    
}
system.debug('SONRA >> '+ isimListesi.size()); // 4 


















    
