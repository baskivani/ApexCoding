// Exception Try-Catch Ornek
public class OrnekTryCatch {
/*
 
integer sayi1= 10;
integer sayi2 = 0;

decimal sonuc = sayi1/sayi2;

system.debug(sonuc);
system.debug('Bakalim bu satir okunacak mi');



string isim ;

integer sayi = isim.length();
system.debug(sayi);
system.debug('Bakalim bu satir okunacak mi');



list<integer> sayiList = new List<integer>{1,3,5};
integer sayi = sayiList.size();
system.debug(sayi);
system.debug(sayiList[3]);

system.debug('Bakalim bu satir okunacak mi');

// https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_classes_exception_methods.htm
// https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_exception_statements.htm

try {
  // Try block
//  kodun ana kisminin yapildi yer 
} catch (exceptionType variableName) {
  // Initial catch block.
  // spesifik bir hata icin yazilan kod nuraya yazilir 
 
} catch (Exception elma) {
  // Optional additional catch statement for other exception types.
 // en genel hata bulma yeri
    System.debug('Exception type caught: ' + elma.getTypeName());    
    System.debug('Message: ' + elma.getMessage());    
    System.debug('Cause: ' + elma.getCause());    // returns null
    System.debug('Line number: ' + elma.getLineNumber());    
    System.debug('Stack trace: ' + elma.getStackTraceString());       
    
} finally {
  // Finally block.
  // her halukarda bu kod calisir calisir
 code_block
}
 
 
*/
    
    public static VOID exceptionOrnegi(){
        
        try {
             
             integer sayi1= 10;
            integer sayi2 = 2;
            
            decimal sonuc = sayi1/sayi2;
            
            system.debug(sonuc);
            system.debug('Bakalim bu satir okunacak mi');
                
            }
        /*
         catch (MathException sifir) {
              // Initial catch block.
              // spesifik bir hata icin yazilan kod nuraya yazilir 
             
              system.debug(' sifira bolunme hatasi cikti');  
                
                
            }
       */
        catch (Exception elma) {
              // Optional additional catch statement for other exception types.
             // en genel hata bulma yeri
                System.debug('Exception type caught: ' + elma.getTypeName());    
                System.debug('Message: ' + elma.getMessage());    
                System.debug('Cause: ' + elma.getCause());    // returns null
                System.debug('Line number: ' + elma.getLineNumber());    
                System.debug('Stack trace: ' + elma.getStackTraceString());       
             // Exception type caught: System.MathException
    // Message: Divide by 0
    // Cause: null
    // Line number: 64
    // Stack trace: Class.OrnekTryCatch.exceptionOrnegi: line 64, column 1   
            } finally {
              // Finally block.
              // At least the catch block or the finally block must be present.
                system.debug('BU kisim her halukarda calisir');
            }
                    
        
    }    
    
    
    
  // CUSTOM EXCEPTION ORNEGI  
    public static VOID yasKontrolMethodu(integer yas){
        
        if ( yas < 0){
            
           throw new YasKontrolException('Kardes YAs 0 dan kucuk olamaz'); 
            
        }else {
            
           system.debug('HER SEY YOLUNDA  KOD CALISTI'); 
            
        }
        
        
        
    }
    
    
    
/*
OrnekTryCatch.exceptionOrnegi();
//  sifira bolunme hatasi cikti

   

OrnekTryCatch.yasKontrolMethodu(-14 );

// hata mesaji 
// **-**   YasKontrolException: Kardes YAs 0 dan kucuk olamaz
 
    
    
   */ 
    
    
    
    
}