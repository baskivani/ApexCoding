// if statement
/*
IF ( sart  ) {
    
    sart dogru ( true ) ise bu kod parcasi calisir 
}



if ( sart1 ){
    
    eger satr1 dogru ise bu kisim calisir
} else if ( sart 2 ){
            
    eger sart1 yanlis ama sart2 dogru ise burasi calsir
} ELSE {
            
     eger yukardaki sartlarin hic biri dogru degilse en son olarak calisir
}

*/

integer sayi = -10 ;

// eger sayi 0 dan buyuk ise pozitif sayidir

if ( sayi > 0 ) {     
    system.debug ( ' SAYI POZITIF');
}

//  eger sayi sifirdan buyuk ise POZITIF  eger sifirdan Kucuk ise NEGATIF
integer sayi = 0 ;
if ( sayi > 0 ) {     
    system.debug ( ' SAYI POZITIF');
} else if ( sayi < 0 ) {     
    system.debug ( ' SAYI NEGATIF' ) ;
} else {
    
   system.debug('SAYI NOTR') ;
}

//  eger sayi sifirdan buyuk ise 3 katini veriniz
//  eger sifirdan Kucuk ise  5 katini veriniz
// eger sifir ise ekrana sayi notr yazdiriniz


integer sayi = -10 ;
if ( sayi > 0 ) {     
integer sonuc = 0;
    sonuc = sayi*3 ;
  system.debug( ' sayi 0 dan buyuk ve uc kati >> '+ sonuc);  
    
} else if ( sayi < 0 ) {     
 integer sonuc2 = 0;
   sonuc2 = sayi*5 ;
  system.debug( ' sayi 0 dan kucuk ve bes kati >> '+ sonuc2);  
      
    
} else {
    
    
   system.debug('SAYI NOTR') ;
}


//  bir sayinin cift mi tek mi sayi oldugunu belirten bir kod yaziniz


integer sayi = 10 ;

// cift olmasini naisl belirleriz

if ( math.mod(sayi,2) == 0    ){
   system.debug(' SAYI CIFT SAYIDIR'); 
} else if ( math.mod(sayi,2) != 0      ){
           
   system.debug(' SAYI TEK SAYIDIR');        
} else {
    
    system.debug(' valla hic beklemedigim bir sonuc cikti');        
}


//   bir sifrenin dogru olup olamdigini kontrol ediniz

string sifre = 'Ankara';
string kullanicininVerdigiSifre = 'ankara';  // SIFRE YANLIS

if (  sifre.equals(kullanicininVerdigiSifre)    ){
    system.debug('SIFRE DOGRU');  
    
} else {
  system.debug('SIFRE YANLIS'); 
    
}


//  TERNARY 


//  sayi sifirdan buyuk mu degil mi
integer sayi = 0 ;

if ( sayi > 0 ) {    system.debug ( 'BUYUK');}      else {   system.debug ( 'DEGIL');   }


   


string sonuc = ( sayi > 0 ) ?          'BUYUK'                     :         'DEGIL'  ; 
system.debug ('TERNARY SONUC  >>> ' + sonuc  ) ;
// TERNARY SONUC  >>> DEGIL



//  eger sayi sifirdan buyuk ise POZITIF  
//  eger      Kucuk ise NEGATIF
// sifir unutma
integer sayi = 0 ;
if ( sayi > 0 ) { 
    system.debug ( ' SAYI POZITIF');
} else if ( sayi < 0 ) { 
    system.debug ( ' SAYI NEGATIF' ) ;
}else {   
    system.debug('SAYI NOTR') ;
}

string sonuc = ( sayi > 0 )   ?      'BUYUK'                      : (  ( sayi == 0 ) ?     'SIFIR'  :  'KUCUK ' );
system.debug ('TERNARY SONUC  >>> ' + sonuc  ) ;

// SWITCH ON 

//  mevsim ismi verildiginde o mevsimin aylarini gostren bir kod      yaziniz 

string mevsim = 'kis';

if ( mevsim.equals('yaz')){
    system.debug('haziran , temmuz , agustos');
        
} else if (  mevsim.equals('sonbahar')    ) {
    
    system.debug('eylul , ekim , kasim'); 
}else if (  mevsim.equals('kis')    ) {
    
    system.debug('aralik , ocak , subat'); 
} else if (  mevsim.equals('ilkbahar')    ) {
    
    system.debug('mart , nisan , mayis'); 
} else {
    
    system.debug( ' MEVSIM ISMINDE PROBLEM VAR');
}


string mevsim = 'yaz';

SWITCH ON mevsim {
    
    when 'yaz'       {  system.debug(' haziran , temmuz, agustos');     }
    when 'sonbahar'  {   system.debug(' Eylul  , ekim , kasim');        }
    when 'kis'       {  system.debug(' Aralik  , ocak , subat');        }
    when 'ilkbahar'  {   system.debug(' mart  , nisan , mayis');        }
    when else        {  system.debug(' MEVSIM ISMINDE PROBLEM VAR');    }
    
}

/*
once ENUM class hazirlanir 
public ENUM mevsimler {

    
   YAZ , SONBAHAR , KIS , ILKBAHAR  
    
    
}

*/
string kullaniciSecenegi =  mevsimler.KIS ;

SWITCH ON   kullaniciSecenegi {
    
    when YAZ       {  system.debug(' haziran , temmuz, agustos');     }
    when SONBAHAR  {   system.debug(' Eylul  , ekim , kasim');        }
    when KIS       {  system.debug(' Aralik  , ocak , subat');        }
    when ILKBAHAR  {   system.debug(' mart  , nisan , mayis');        }
    when else      {  system.debug(' MEVSIM ISMINDE PROBLEM VAR');    }
}



























