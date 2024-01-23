integer num;
system.debug('Previous status=' + num);
num=10;

system.debug('Next status=' + num);

integer num2=25;
system.debug('Next status=' + num2);

long longNumber=154422555L;

integer x= 13;
integer y=3;
decimal z=3;

integer result= x/y;
system.debug('Integer result ' +result);// Integer result= 4

decimal resultDecimal= x/z;
system.debug('Decimal result '+resultDecimal);// Decimal result 4.33333333333333333333333333333333

double resultDouble= x/z;
system.debug('Double result '+resultDouble); // Double result 4.333333333333333

double resultDouble= x/y;
system.debug('Double result '+resultDouble); // Double result 4.0

**// String Methods**

String name ='Baran';
system.debug('Name >> '+ name); // Name >> Baran;

String num1= '450';
system.debug('num1 >> '+ num1); // num1 >> 450;

Integer num2 = 450;
system.debug('num2 >> '+ num2); // num2 >> 450;

// Example

String numberOfClerk= '500';
system.debug('number Of Clerk>>' +numberOfClerk); // number Of Clerk>>500

integer realNumber = Integer.valueOf(numberOfClerk);
system.debug('real Number>>' +realNumber); // real Number>>500
