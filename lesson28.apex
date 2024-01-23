// Static Konusu
public class Araba {
// default olarak bir adet CONSTRUCTOR vardir
   /*
    
public araba(){

}
    */ 
    
   public integer uretilenArabaSayisi=0; 
   public  STATIC   integer arabaSayisi=0;
    
   public  string arabaMarkasi = 'JEEP';   // default access modier PRIVATE dir 
   public integer uretimYili = 2020 ;
   public string arabaRengi = 'Kirmizi';
    
   public araba(){
     arabaSayisi++; 
       
     uretilenArabaSayisi++;

}
    
    
  public araba( string marka    ){
      arabaSayisi++;
       uretilenArabaSayisi++;

      this.arabaMarkasi= marka;
}    
    
  public araba( integer armut , string elma     ){
      arabaSayisi++;
       uretilenArabaSayisi++;

      this.arabaMarkasi= elma;
      this.uretimYili = armut;
}   
   
      public araba( string renk ,integer yil      ){
          arabaSayisi++;
           uretilenArabaSayisi++;

      this.arabaRengi= renk;
      this.uretimYili = yil;
}   
    
    
    
    //  method sonradan ogrenilecek
    public void methodBir(){
        
        system.debug('method bir den nasilsin');
    }
    
     public STATIC void methodIki(){
        
        system.debug('method IKI den nasilsin');
    }

    
    
    
}





//  anoynumous wondow

// static ne demektir

Araba  ornek = new Araba();

system.debug(ornek.uretilenArabaSayisi) ; // 0

ornek.methodBir(); // method bir den nasilsin
// static cagrilma yontemi
 system.debug( Araba.arabaSayisi)     ;  // 0

araba.methodIki();  // method IKI den nasilsin



*///  static herkesin malidir
    
 Araba  ornek = new Araba();   

system.debug('uretilenArabaSayisi >> ' + ornek.uretilenArabaSayisi) ;
system.debug('arabaSayisi' + Araba.arabaSayisi)     ;

 Araba  ornek2 = new Araba();   

system.debug('uretilenArabaSayisi2 >> ' + ornek2.uretilenArabaSayisi) ;
system.debug('arabaSayisi2 >> ' +Araba.arabaSayisi)     ;

 Araba  ornek3 = new Araba('Mazda');   

system.debug('uretilenArabaSayisi3  >> ' +  ornek3.uretilenArabaSayisi) ;
system.debug( 'arabaSayisi3 >> ' + Araba.arabaSayisi)     ;

 Araba  ornek4 = new Araba('OPEL');   

system.debug('uretilenArabaSayisi4  >> ' +  ornek4.uretilenArabaSayisi) ;
system.debug( 'arabaSayisi 4 >> ' + Araba.arabaSayisi)     ;




