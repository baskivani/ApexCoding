// Inheritance 
public  VIRTUAL    class Hayvan {
    // VIRTUAL demek parent olabilirim 
  
    public VOID solunum(){
        system.debug('Hayvanlar solunum yapar');
    } 
     public VOID yemek(){
        system.debug('Hayvanlar yemek yer');
    } 
    
}


public class Kedi    EXTENDS  Hayvan {
// EXTENDS  parent olarak hayvan sectim demek  
  
    
    public VOID miyav(){
        system.debug('Kediler miyavlar');
    }   
    
}


public class Kopek  EXTENDS  Hayvan  {

  // EXTENDS  parent olarak hayvan sectim demek    

      public VOID havlar(){
        system.debug('Kopekler havlar');
    } 
}



kopek comar = new Kopek();

comar.solunum();
comar.yemek();
comar.havlar();

kedi tekir = new Kedi();

tekir.solunum();
tekir.yemek();
tekir.miyav();


Hayvan hyn = new Hayvan();
hyn.solunum();
hyn.yemek();


kedi tekir = new Kedi();

tekir.solunum(); // Hayvanlar solunum yapar
tekir.yemek();   // |Hayvanlar yemek yer
tekir.miyav();


kopek comar = new Kopek();

comar.solunum();
comar.yemek();
comar.havlar();




=======
// Inheritance 
public  VIRTUAL    class Hayvan {
    // VIRTUAL demek parent olabilirim 
  
    public VOID solunum(){
        system.debug('Hayvanlar solunum yapar');
    } 
     public VOID yemek(){
        system.debug('Hayvanlar yemek yer');
    } 
    
}


public class Kedi    EXTENDS  Hayvan {
// EXTENDS  parent olarak hayvan sectim demek  
  
    
    public VOID miyav(){
        system.debug('Kediler miyavlar');
    }   
    
}


public class Kopek  EXTENDS  Hayvan  {

  // EXTENDS  parent olarak hayvan sectim demek    

      public VOID havlar(){
        system.debug('Kopekler havlar');
    } 
}



kopek comar = new Kopek();

comar.solunum();
comar.yemek();
comar.havlar();

kedi tekir = new Kedi();

tekir.solunum();
tekir.yemek();
tekir.miyav();


Hayvan hyn = new Hayvan();
hyn.solunum();
hyn.yemek();


kedi tekir = new Kedi();

tekir.solunum(); // Hayvanlar solunum yapar
tekir.yemek();   // |Hayvanlar yemek yer
tekir.miyav();


kopek comar = new Kopek();

comar.solunum();
comar.yemek();
comar.havlar();




>>>>>>> 164d40478d5f1a995b08a01d8fe37755f4396c79
