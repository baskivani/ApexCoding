// SOQL Sorulari    
// CHILD dan parenta
//  contactlari ve bu contactlarin acclarini getiren bir method yaziniz

SOQLOrnekleri ornek = new SOQLOrnekleri();
list<Contact> sonucListesi=  ornek.contactlarVeAccountlari();

for( Contact cnt :  sonucListesi    ){
 system.debug( cnt.Name + '   calistigi kurum >>> ' + cnt.Account.Name   );
}

//  idsini verecegim contacgoin nerede calsitigini soyle
 SOQLOrnekleri ornek = new SOQLOrnekleri();
 string accAdi=  ornek.contactVeAccount('003Hu00003UFBfnIAH');
system.debug( accAdi); // American Banking Corp.


// soru 3  parenttan childa
//   account ve account contactlarini goster
SOQLOrnekleri ornek = new SOQLOrnekleri();
 List<account> accList= ornek.accVeContactlari();


// soru 4  parenttan childa

// idsini verdigim accountun contactlarini donunuz
List<account> accList=  SOQLOrnekleri.accVeContactlari('001Hu00002xfONCIA2'); 
system.debug(accList.get(0).Contacts);

for( account acc: accList){
    system.debug(acc.contacts);
}

// soru 5  eger bilinmedik bir ID verilirse bu ID yi kontrole ederek veri donunuz
List<account> accList=  SOQLOrnekleri.accVeContactlari('dthdhfdghf');

system.debug(accList);

//  ODEV 
//Soru 1 Account objesinde  Industrye gore ayni sektorde calisan ve 
//         firma sayisi 1 den fazla olan sektorleri getiriniz.
// KOPYA
// COUNT() ve HAVING



// Soru 2 butun accountlari ve bu accountlarda contact olan ve ismi A ile baslayan kisileri bulun   
    
// kopya  LIKE    ve wild card      
    
//SORU 3) Account objesinden gelen verileri azalan siraladiktan sonra 
//        bastan 4. recordu getiriniz
// KOPYA  OFFSET LIMIT

// SORU 4) Çalışan sayısı ikinci en yüksek olan Account adını ve çalışan sayısını seçin
// KOPYA  OFFSET LIMIT




//   tch the id,name,rating from account if the names are 
//  'GenePoint', 'Burlington Textiles Corp of America', ' sForce' , 'Dickenson plc'

//  dinamik kod yaziniz   liste olsuturun  ve o listeyi aratin 




