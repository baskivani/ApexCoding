/*

= 	x = y    Assignment operator 

+=    	x += y   Addition assignment operator    ==>  x = x + y 
*=    	x *= y   Multiplication assignment operator ==>  x = x*y
-= 	    x -= y   Subtraction assignment operator 
/=   	x /= y   Division assignment operator


&& 	x && y   AND logical operator (boolean)  ve demek
|| 	x || y   OR logical operator   (boolean)  veya demek


== 	x == y  Equality operator. ( boolean ) (String comparison using == is case-insensitive)
!= 	x != y  Inequality operator.

< 	x < y   Less than operator.   ( boolean )
> 	x > y   Greater than operator. ( boolean )
<= 	x <= y  Less than or equal to operator.  ( boolean )
>= 	x >= y  Greater than or equal to operator.  ( boolean )

*/

integer sayi = 2;
//*integer numara = sayi ;
integer sayi2 = 3; 


system.debug('ONCEKI DURUM >> ' +sayi); // 2

sayi += 19;  //sayi = sayi +19;
// sayi += sayi2;  //sayi1 = sayi2 +19;

system.debug('ONCEKI DURUM >> ' + sayi); // 21


integer sayi1 = 3 ;

sayi1 *= 2 ; //  sayi1 = sayi1 * 2 ;   //  6
system.debug(sayi1);

// ornek 
integer sayi = 4;

sayi= sayi+ (sayi*2) ; 
system.debug(sayi);    // 12



//  && ( and)    || (or) 

boolean onerme1 = false;
boolean onerme2 = true;

boolean ve = onerme1 &&  onerme2 ;
system.debug(ve);  // false

boolean veya = onerme1 ||  onerme2 ;  // true
system.debug(veya);



string numara = '9';


//decimal sayi = decimal.valueOf(numara);  // 9 
//double sayi = double.valueOf(numara);    // 9.0
integer sayi = Integer.valueOf(numara);   //



system.debug(sayi);   // 9 


string numara = '9.3';

//decimal sayi = decimal.valueOf(numara);  // 9.3 
//double sayi = double.valueOf(numara);    // 9.3
// integer sayi = Integer.valueOf(numara);   // HATA verir

system.debug(sayi); 

//  Math class
// ceil(decimalValue)  sayisi tavana yuvarlar
// floor(doubleValue)   sayisi tabana yuvarlar
// round(doubleValue) // do not use 
// roundToLong(doubleValue)

// max(decimalValue1, decimalValue2)
// min(integerValue1, integerValue2)

// Convert decimal/string to integer valueOf() function


// pow(doubleValue, exponent)
// sqrt(decimalValue)


// mod(integerValue1, integerValue2)
// random()

// ceil(decimalValue)  sayisi tavana yuvarlar
decimal sayi = 10.4;

double sonuc = math.ceil(sayi);  // 11
system.debug(sonuc);

double sayi = 10.4;

decimal sonuc = math.ceil(sayi);  // 11.0
system.debug(sonuc);

// floor(doubleValue)   sayisi tabana yuvarlar

decimal sayi = 10.4;

double sonuc = math.floor(sayi);  // 10.0
system.debug(sonuc);

double sayi = 10.4;

decimal sonuc = math.floor(sayi);  // 10.0
system.debug(sonuc);


// round(doubleValue) // do not use 
// roundToLong(doubleValue)



decimal sayi = 10.5;    // 10
decimal sayi2 = 10.6;   //   11 
decimal sayi3 = 10.3 ;   // 10

LONG sonuc = MATH.roundToLong(sayi); 
system.debug(sonuc);


// max(decimalValue1, decimalValue2)
// min(integerValue1, integerValue2)

 double  sonuc = MATH.max(9 , 10.6); // 10.6
system.debug(sonuc);


 LONG  sonuc = MATH.min(9 , 10000000000L); // 9 
system.debug(sonuc);

// pow(doubleValue, exponent)
// sqrt(decimalValue)

integer x = 2;
integer y = 3;

system.debug(MATH.pow(x,y)); // 8.0

integer sayi = 25 ; 
system.debug(MATH.sqrt(sayi)); // 5.0



// mod(integerValue1, integerValue2)
// random()


system.debug(math.mod(8,5));  //  8 i bese boldugumde kalan 3 tur


system.debug('sayi 1 >>> '+ math.random());
system.debug('sayi 2 >>> '+ math.random());
system.debug('sayi 3  >>> '+ math.random());
system.debug('sayi 4 >>> '+ math.random());

//  zar atan bir kod yazin 

//  Math class
// ceil(decimalValue)  sayisi tavana yuvarlar
// floor(doubleValue)   sayisi tabana yuvarlar
// round(doubleValue) // do not use 
// roundToLong(doubleValue)

// max(decimalValue1, decimalValue2)
// min(integerValue1, integerValue2)

// mod(integerValue1, integerValue2)
// random()


system.debug((Integer)math.ceil(math.random()*6)   );
system.debug((Integer)math.ceil(math.random()*6)   );
system.debug((Integer)math.ceil(math.random()*6)   );
system.debug((Integer)math.ceil(math.random()*6)   );
system.debug((Integer)math.ceil(math.random()*6)   );

system.debug(INTEGER.valueOf(math.ceil(math.random()*6))   );
system.debug(INTEGER.valueOf(math.ceil(math.random()*6))   );
system.debug(INTEGER.valueOf(math.ceil(math.random()*6))   );
system.debug(INTEGER.valueOf(math.ceil(math.random()*6))   );
system.debug(INTEGER.valueOf(math.ceil(math.random()*6))   );



system.debug(math.round(math.ceil(math.random()*6)));
system.debug(math.round(math.ceil(math.random()*6)));
system.debug(math.round(math.ceil(math.random()*6)));
system.debug(math.round(math.ceil(math.random()*6)));









