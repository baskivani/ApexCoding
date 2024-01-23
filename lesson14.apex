// Interface ve Abstract

public ABSTRACT class Ogretmen {

    
    public Void gulumsemek(){
        
        system.debug('Ogretmenler tebessum etsinler');
        
    }
    
    public VOID ciddi(){
        system.debug('Ogretmenler ciddi olmalidir ');
    }
    
  
    ABSTRACT VOID yillikPlan();
    ABSTRACT VOID derseZamanindaGelmek();
    
    
    
}

public INTERFACE SekizinciSinifMat {

    void turev();
    
}

public INTERFACE YedinciSinifMat {
//  gizli olarak abstracttir
//  icindeki methodlarda gizli olarak abstractir
//  access modifierlari ( public , private)   PUBLICtir 
    
    VOID usluSayilar();
    VOID kokluSayilar();
    
 /*   
 Interface icindeki Methodlar PUBLIC tir ( access modifier yazilmaz )
Interface ABSTACT tir , Instance (ornek) olusturulamaz.
Interface icindeki Methodlar da ABSTRACT tir. 
Abstract classlara semi-abstract; interfaceler fully-abstract denilir 
Interfaceleri parent yapmak icin IMPELEMENTS kullanilir
Interface icindeki tum methodlar override edilmek zorundadir ancak method basina override yazilmaz.
Methodlar public olmak zorundadir
  

*/
}




public class AbstractAyseHanim  EXTENDS Ogretmen  IMPLEMENTS YedinciSinifMat {

    public VOID sertHoca(){
        system.debug('ogretmenler sert olmalidir');
    }
    
        
        public VOID yillikPlan(){
            system.debug(' ben yillik plan hazirlayacgim');
        }
    
        public Void derseZamanindaGelmek(){
            system.debug(' derslere zamaninda gelecegim');
        }
    
   // YedinciSinifMat INTERFACE icin yazilan methodlar
    
    public VOID  usluSayilar(){
        system.debug('USLU SAYILARI GUZEL ornekle anlatacgim');
    }
    public VOID  kokluSayilar(){
        system.debug('koklu saylar pek onmeli degil');
    } 
}



public class AbstractFatmaHanim  EXTENDS Ogretmen  IMPLEMENTS  YedinciSinifMat , SekizinciSinifMat        {

    
    public VOID yillikPlan(){
        
        system.debug('Yillik planlari yaz tattilinde hazirlarim ');
    }
    
    VOID derseZamanindaGelmek() {
       // system.debug(' DERDSE her zaman 10 dak gec gelirim');
    }
    
    // yedinciSinif interface mecburuz
   PUBLIC  VOID usluSayilar() {
       // system.debug('Yorgunum  az soru cozecegim');
        
    }
    
    PUBLIC  VOID kokluSayilar(){
        
        system.debug('ogrenciler anlamadi  daha fazla soru coz');  
    }
 
    // sekizinci sinif interface yzunden mecburuz
    PUBLIC   void turev(){
        system.debug('Bu konu zor   en son anlat');  
    }
}







