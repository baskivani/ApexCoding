// Polymorphism
public  VIRTUAL    class Hayvan {
    // VIRTUAL demek parent olabilirim 
  
    public VOID solunum(){
        system.debug('Hayvanlar solunum yapar');
    } 
     public VOID yemek(){
        system.debug('Hayvanlar yemek yer');
    } 
   
    
//  matematik ile alakali Overloading    
    
    public  integer  toplama (integer sayi1 , integer sayi2){
     //VIRTUAL child class bu methodu degisteirbilir izni 
     // child override yapabilir izni  
       return sayi1+sayi2; 
        
    }
    
    public  integer  toplama (integer sayi1 , integer sayi2 , integer sayi3){
        
       return sayi1+sayi2 +sayi3; 
        
    }
    
      public  decimal  toplama (decimal sayi1 , integer sayi2){
        
       return sayi1+sayi2; 
        
    }
    
  
// Overriding   
    
    public VIRTUAL void hareket ( ){
        
        system.debug('Hayvanlar kareket eder');
    }  
    
    
}


public class Kopek  EXTENDS  Hayvan  {
// EXTENDS  parent olarak hayvan sectim demek    

      public VOID havlar(){
        system.debug('Kopekler havlar');
    } 
    
    
    OVERRIDE
        // parentta toplama methodu var ama ben BODY kismini degistiriyorum 
      public void hareket ( ){
        
        system.debug('KOPEKLER kosarak hareket eder');
    } 
    
    
    
}


// Overloading
/*
******  INHERITANCE   CLASSLAR  ****
****  BURADA INHERITANCE VE POLYMORFIZM ( overload ve override ) da ANLATILDI *****

Overloading  ==>>  AYNI CLASS DA
AYNI METHOD ISMI ILE 
FARKLI RETURN TYPE veya 
FARKLI PARAMETRELI
Method yazilabilmesi

*/

Hayvan hyn = new Hayvan();
system.debug(hyn.toplama(2,3));

system.debug(hyn.toplama(2,3 , 5));
system.debug(hyn.toplama(2.4,3));


kopek comar = new Kopek();

system.debug(comar.toplama(5,6));
system.debug(comar.toplama(5,6 ,7));
system.debug(comar.toplama(5.5,6));


/* Overriding ===>>
Parent class da olan bir methodu
CHILD CLASS DA
AYNI ISIMLI
Body kismi farkli
Method yazilabilmesi
** Private methodlar  VE  Statik methodlar override edilemez
*/


Hayvan hyn = new Hayvan();
hyn.hareket(); // Hayvanlar kareket eder

kopek comar = new Kopek();
comar.hareket(); // KOPEKLER kosarak hareket eder


