// Test Class 2.yontem (Assert.areEqual)

public class SayiKontrol {

    
    public static String sayiKontrolMethodu(integer sayi){
        
        
        //  sayi sifirdan buyuk ise  elma donsun
        //  sayi sifirdan kucuk ise  armut donsun
        //  sayi sifir ise kiraz donsun
        string sonuc;
        
        if(sayi< 0   ){
            // return 'armut' ; 
            sonuc='armut';
        }else if (sayi>0){
            sonuc='elma';
            
        }else{
            sonuc='kardesim sayi ver sayi !!';
        }
        
return sonuc;        
        
        
    }
    
}



///  ******  TEST CLASS *****

@isTest   //  apex programina bu class test class dedik
public class SayiKontrolTest {

    
    
     @isTest //  alttaki method test methodu demektir   
    STATIC VOID sayiKontrolMethoduPozitifKontrol(){
     // eski yontem 
     /*   String  cevap=    SayiKontrol.sayiKontrolMethodu(3);
        system.assertEquals('elma', cevap, ' cevabin elma olmasi gerekiyor');
        
        String  cevap2=    SayiKontrol.sayiKontrolMethodu(-3);
        system.assertEquals('armut', cevap2, ' cevabin armut olmasi gerekiyor');
        
         String  cevap3=    SayiKontrol.sayiKontrolMethodu(0);
        system.assertEquals('sifir', cevap3, ' cevabin sifir olmasi gerekiyor');
       */ 
     // YENI YONTEM
     // https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_class_System_Assert.htm   
        
        String  cevap=    SayiKontrol.sayiKontrolMethodu(3);
        Assert.areEqual('elma', cevap, ' cevabin elma olmasi gerekiyor');
     // system.assertEquals('elma', cevap, ' cevabin elma olmasi gerekiyor');
        
        String  cevap2=    SayiKontrol.sayiKontrolMethodu(-3);
        Assert.areEqual('armut', cevap2, ' cevabin armut olmasi gerekiyor');
        
         String  cevap3=    SayiKontrol.sayiKontrolMethodu(0);
        Assert.areEqual('sifir', cevap3, ' cevabin sifir olmasi gerekiyor');        
        
          
    }
    
      @isTest //  alttaki method test methodu demektir   
    STATIC VOID sayiKontrolMethoduNegatifKontrol(){
        
        String  cevap=    SayiKontrol.sayiKontrolMethodu(3);
        system.assertNotEquals('armut', cevap,'cevap armut cikmayacak   cevap elma cikacak');
       // Assert.areNotEqual('armut', cevap,'cevap armut cikmayacak   cevap elma cikacak');
        
        String  cevap2=    SayiKontrol.sayiKontrolMethodu(-30);
        system.assertNotEquals('elma', cevap2,'cevap elma cikmayacak   cevap armut cikacak');
        
       //  Assert.areNotEqual('elma', cevap2,'cevap elma cikmayacak   cevap armut cikacak');
        
    }
    
}










