// Test Class 1.yontem (System.assertEquals)
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
     
        String  cevap=    SayiKontrol.sayiKontrolMethodu(3);
        system.assertEquals('elma', cevap, ' cevabin elma olmasi gerekiyor');
        
    }
    
      @isTest //  alttaki method test methodu demektir   
    STATIC VOID sayiKontrolMethoduNegatifKontrol(){
         String  cevap=    SayiKontrol.sayiKontrolMethodu(3);
        system.assertNotEquals('armut', cevap,'cevap armut cikmayacak   cevap elma cikacak');
        
    }
    
}











