// Encapsulation

/// onceden anlatilan konu  getter setter konusu


public class Encapsulation {

    
    private integer sayi= 5 ;

    public integer getSayi(){
        return sayi;
    }   
     public VOID setSayi(integer userNum){
        sayi= userNum;
    }  
    
}



Encapsulation ornek = new Encapsulation();

  //system.debug(ornek.sayi);
system.debug(ornek.getSayi());
ornek.setSayi(99);
system.debug(ornek.getSayi()); // 99

