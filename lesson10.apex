
// Method Dersi 1. Part
public class MatematikClass {

    
   public integer sayi = 10;
   protected  string isim = 'Resul';
    
    //  method olusturma
   
    public integer toplama( integer sayi1 , integer sayi2  ) {
        
        integer toplam = sayi1 + sayi2 ;
       
        system.debug('method icincen geliyor >>' + toplam) ;
       return  toplam;
        
    }
    
    // DONUS TIPI integer, double, decimal, string boolean , 
    // liste , array , account account obj dlo liste
    // VOID de olabilir   icraat var  bir sey donme
    
    //  parametre ==>  her sey olabilir
    //  hicborseyde olabilir
    
      public VOID isim(   ) {
      
          system.debug(' bu da VOID method ');
        
    }
    
    
    
    //  iki adet ondalikli sayinin carpimini verecek method yaziniz
    
    public double carpma1 (Decimal sayi1, Decimal sayi2){ // parametre double kabul etmedi
        double carpma =sayi1*sayi2;
            return carpma;
    }
    

    
    
  public Decimal Carpim (decimal sayi1, decimal sayi2) {
        Decimal sonuc= sayi1*sayi2;
       
        return sonuc;
}  
    
 
    
    //  bolme islemi icin method yaziniz
    
     public Decimal bolme (decimal sayi1, decimal sayi2) {
        
         Decimal sonuc=-1;
         
         if ( sayi2 != 0 ){
             sonuc= sayi1 /sayi2; 
         }
       
       
        return sonuc;
}  
    
//Example 11: If the person is male // ERKEK ICIN
//               i)If he is less than 16, print 'Should go to school'
//                  16 YASINDAN KUCUK ISE ' OKULA GITMELIDIR '
//               ii)If he is less than 66, print 'Should work'
//                  66 YASINDAN KUCUK ISE 'CALISMALIDIR' 
//               iii)If he is greater than 65, print 'Should be retired'
//                65 YASINDAN BUYUK ISE ' EMEKLI OLMALIDIR'
//            If the person is female   //  KADIN ISE
//               i)If she is less than 18, print 'Should go to school'
//                    16 YASINDAN KUCUK ISE ' OKULA GITMELIDIR '
//               ii)If she is less than 60, print 'Should work'
//                    60 YASINDAN KUCUK ISE 'CALISMALIDIR' 
//               iii)If she is greater than 60, print 'Should be retired'
//                     60 YASINDAN BUYUK ISE ' EMEKLI OLMALIDIR'

    
    public String  calismaHayati (STRING cinsiyet , integer yas ) {
        string sonuc;
         
        if ( cinsiyet.equalsIgnoreCase( 'ERKEK')  ){
            
            if (  yas > 0 &&   yas < 16){
                
                sonuc = 'erkek OKULA GITMELIDIR';
            }else if (  yas < 66 ){
                sonuc = 'CALISMALIDIR';
            } else if ( yas > 65){
                sonuc = 'EMEKLI OLMALIDIR';
            } else { 
            sonuc = ' YAS hatali girildi';
            }
            
            
        }   else if ( cinsiyet.equalsIgnoreCase( 'KADIN')    )  {
            
              if ( 0 < yas  &&   yas < 16){
                
                sonuc = 'bayan OKULA GITMELIDIR';
            }else if ( yas >= 16 &&   yas < 60 ){
                sonuc = 'CALISMALIDIR';
            } else if ( yas > 60){
                sonuc = 'EMEKLI OLMALIDIR';
            } else { 
            sonuc = ' YAS hatali girildi';
            }
            
        }
         
        return sonuc;
    }
    
  
    
    
}

///  anoymius wibdiws


//  METHOD

MatematikClass mat = new MatematikClass();


 system.debug('Anynomus windows da cagrildi >>>' + mat.toplama( 3 , 5  ) )  ;
// method icincen geliyor >>8
// Anynomus windows da cagrildi >>>8

integer sonuc = mat.toplama( 10 , 20  );

system.debug(  'Anynomus windows da cagrildi >>>' +   sonuc);
// method icincen geliyor >>30

// Anynomus windows da cagrildi >>>30

MatematikClass matematik = new MatematikClass();

decimal sonuc = matematik.Carpim(3.2, 5.7);
system.debug(sonuc);  // 18.24

double sonuc2 = matematik.carpma1(15.0,15.0);
system.debug('sonuc double >> ' + sonuc2);

//  bolme islemi
MatematikClass matematik = new MatematikClass();

system.debug(matematik.bolme (3, 0) )  ; // 0.6

//  calisma hayati ornegi 

MatematikClass matematik = new MatematikClass();


string sonuc= matematik.calismaHayati ('kadin' , 60);
system.debug(sonuc); // OKULA GITMELIDIR

string sonuc2= matematik.calismaHayati ('erkek' , 60);
system.debug(sonuc2(;)























