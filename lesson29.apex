// Class Olusturma
public class Araba {
// default olarak bir adet CONSTRUCTOR vardir
   /*
    
public araba(){

}
    */ 
    
   public araba(){

}
    
    
  public araba( string x    ){

      this.arabaMarkasi= x;
}    
    
  public araba( integer armut , string elma     ){

      this.arabaMarkasi= elma;
      this.uretimYili = armut;
}   
   
      public araba( string renk ,integer yil      ){

      this.arabaRengi= renk;
      this.uretimYili = yil;
}   
    
    public  string arabaMarkasi = 'JEEP';   // default access modier PRIVATE dir
  
    public integer uretimYili = 2020 ;
   
   public string arabaRengi = 'Kirmizi';
    
    //  method sonradan ogrenilecek
    public void methodIsmi(){
        
        system.debug('nasilsin');
    }
    
    
    
    
    
}



///  ANAYMOUS WINDOW



integer sayi =10 ;

/*
ACCESS MODIFIER ==  erisim izni 
private    ===  sadece class icerisinde kullinabilen degisken
protected  === klass icince veya inner class incen veya child class tarafindan ulasilabilir
public    ===  ayni org icerinde herkes ulasabilir
global  ===   tum dunya ulasabilir
*/

Araba  yeniAraba = new Araba();

//system.debug( yeniAraba.arabaMarkasi  ); // JEEP


yeniAraba.methodIsmi() ; //nasilsin


Araba  yeniAraba2 = new Araba();
system.debug( yeniAraba2.arabaMarkasi  ); // JEEP






Araba  yeniAraba = new Araba();

system.debug( yeniAraba.arabaMarkasi  ); // JEEP
system.debug( yeniAraba.uretimYili  );  // 2020

// manuel contstucro ile arab uretimi

Araba  yeniAraba3 = new Araba('MAZDA');
system.debug(yeniAraba3.arabaMarkasi);  // MAZDA
system.debug( yeniAraba3.uretimYili  ); // |2020

Araba  yeniAraba4 = new Araba( 1960 , 'MUSTANG'    );
system.debug(yeniAraba4.arabaMarkasi);  // MUSTANG
system.debug( yeniAraba4.uretimYili  );  // 1960

Araba  yeniAraba5 = new Araba(   'mavi' ,2024     );
system.debug(yeniAraba5.arabaMarkasi);    // JEEp
system.debug( yeniAraba5.uretimYili  );   // 2024
system.debug( yeniAraba5.arabaRengi  );  // mavi

Math.pow( 3,7);
