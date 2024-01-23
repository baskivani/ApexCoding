// For Loop, While Loop ve Do While Loop
//1)for-loop       %20
//2)while-loop     %1
//3)do-while-loop   %4
//4)for-each-loop   %75  ( collection array List set map)





//1)for-loop 


system.debug('Benim adim Resul');
system.debug('Benim adim Resul');
system.debug('Benim adim Resul');
system.debug('Benim adim Resul');
system.debug('Benim adim Resul');
/*
for (  baslangic degeri ;  loop dongu sarti ; artis sarti        ) {
    
    kodun kendisi
    
}
*/
for ( integer i = 0   ;   i < 6    ; i =i+1        ){
    
   system.debug('*****Benim adim Resul*****'); 
}

//  verilen sayiya kadar sayilari toplayin

sayi 5    1+2+3+4+5 = 15 

   integer sonuc=0; 
   for ( integer i = 0   ;   i < 6    ; i++        ){
    sonuc = sonuc +i ;
   system.debug('sonuc >> '+ sonuc ); 
}


//  verilen sayidan ikinci sayiya kadar sayilari toplayin
    sayiBir 3 
    sayiIki 6      3+4+5+6 = 18 

   integer sonuc=0;
   integer sayi1= 3 ;
   integer sayi2 = 6;

for ( integer i = sayi1  ;   i < sayi2+1    ; i++        ){
    sonuc = sonuc +i ;
   system.debug('sonuc >> '+ sonuc ); 
}

//  verilen sayidan ikinci sayiya kadar  
// verilen  sayi kadar artiraraksayilari toplayin

    sayi1 = 3
    sayi2 = 13
    artis = 4       3+7+11 = 21

   integer sonuc=0;
   integer sayi1= 3 ;
   integer sayi2 = 13;
   integer artis = 4;

for ( integer i = sayi1  ;   i < sayi2+1    ; i = i + artis   ){
    sonuc = sonuc +i ;
   system.debug('sonuc >> '+ sonuc ); 
}


cift sayilarin toplami
    5 den 10  >>>> 6 +8+10 =24 
// 1.yolu 
   integer sonuc=0;
   integer sayi1= 5 ;
   integer sayi2 = 10;
   integer artis = 2;

for ( integer i = sayi1 +1  ;   i < sayi2+1    ; i = i + artis   ){
    sonuc = sonuc +i ;
   system.debug('sonuc >> '+ sonuc );
}
 
// 2. yontem 
   integer sonuc=0;
   integer sayi1= 5 ;
   integer sayi2 = 10;
   integer artis = 2;

for ( integer i = sayi1 ;   i < sayi2+1    ; i++  ){
    if ( math.mod(i,2) == 0      ){
        sonuc = sonuc +i ;
       system.debug('sonuc >> '+ sonuc ); 
    }
   
}

// odev  lutfen kendiniz soru yazip onu cozunuz


// string ile ilgili for loop 
string sehir = 'Kayseri';
// K
// a
// y
// s
// e
// r
// i
// substring()

string sehir = 'Kayseri';
//  index ve stringin boyu arasindaki iliskilyi hatirlayalim  
// max index  = lenght() -1
for ( integer i = 0 ; i < sehir.length(); i++    ) {
    
    system.debug(sehir.substring(i , i+1     ));
    
}


//  Resul  >>>> luseR

string isim = 'Resul';
integer index = isim.length() -1 ;
string sonuc='';

for (  integer i = isim.length() -1;  i >= 0      ; i--       ){
    
    sonuc = sonuc+ isim.substring(i , i+1 );
    system.debug(sonuc); // _luseR
}



// while loop

   //  BASLANGIC         LOOP CALISMA KURALI     // ARTIRMA  AZALTMA KURALI
for ( Integer i=0    ;         i<5;                  i++){
    
        System.debug('Benim adim Resul');
}


// WHILE LOOP

Integer i=0;               //  BASLANGIC 
while ( i < 5 ) {             //   LOOP CALISMA KURALI
   
    System.debug('Benim adim Resul');
   
    i++;           // ARTIRMA  AZALTMA KURALI  bunu koymaz ise sonsuz loop olur
  
}




// Do while 

Integer i=0;    //  BASLANGIC 

do {
    
    System.debug('Benim adim Resul');
    i++;               // ARTIRMA  AZALTMA KURALI  bunu koymaz ise sonsuz loop olur
  
}while (i < 5);         //   LOOP CALISMA KURALI



//  ODEV  
// soru 1 
 integer sonuc = LoopClass.sayiToplam ( 5 );
system.debug(sonuc);


////   loop class 
public class LoopClass {

    
    public static integer sayiToplam ( integer sayi ){
        
         integer sonuc=0; 
       for ( integer i = 0  ;   i < sayi+1    ; i++         ){
        sonuc = sonuc +i ;
       system.debug('sonuc >> '+ sonuc ); 
    }
     return sonuc;
        
        
    }
    
    
}









