// DATE CLASS

// today()
// addDays(5)

// .day()
// .year()
// .month()

// newInstance(2022, 01, 31); 
// parse('2021-01-31');
// valueOf(stringDate)

// daysBetween(secondDate)
// monthsBetween(sedondDate)

// isLeapYear(year)

// format ()


    
// today()
system.debug(date.today());  // 2024-01-02 00:00:00 2024-01-02 00:00:00

// addDays(5)
date bugun = date.today();

system.debug(bugun.addDays(50)); // 2024-02-21 00:00:00            
             
system.debug(bugun.addDays(-5));    // 2023-12-28 00:00:00       
 
// addMonths(additionalMonths)            
             
date bugun = date.today();

system.debug(bugun.addMonths(15)); // 2025-04-02 00:00:00            
             
 
// .day()
// .year()
// .month()


date bugun = date.today();

integer bugunSaysi= bugun.day();
system.debug('bugunSaysi >>> '+ bugunSaysi); // bugunSaysi >>> 2

integer aySaysi= bugun.month();
system.debug('aySaysi >>> '+ aySaysi); // aySaysi >>> 1

integer yilSaysi= bugun.year();
system.debug('yilSaysi >>> '+ yilSaysi); // yilSaysi >>> 2024


// newInstance(2022, 01, 31); 
// parse('2021-01-31');
// valueOf(stringDate)

date olusmusTarih = date.newInstance(2022, 01, 31);
system.debug('olusmusTarih >>> '+ olusmusTarih);  // olusmusTarih >>> 2022-01-31 00:00:00


date bugun = date.today();
system.debug(bugun);  // 2024-01-02 00:00:00


string  bugun = '2024-01-03';

date oluturulmusTarih = date.valueOf(bugun);
system.debug('oluturulmusTarih >>> ' +  oluturulmusTarih); // oluturulmusTarih >>> 2024-01-03 00:00:00


Date myDate = Date.parse('11/14/2021'); // invalid date

Date myDate = Date.parse('31-01-2021'); // invalid

Date myDate = Date.parse('01-31-2021'); //  invalid

Date myDate = Date.parse('2025-09-25');
system.debug('parse date >>> ' + myDate); // |oarse date >>> 2025-09-25 00:00:00

 
// daysBetween(secondDate)
// monthsBetween(sedondDate)

date bugun = date.today();

date olusmusTarih = date.newInstance(1973, 12, 09);

integer gunFarki = olusmusTarih.daysBetween(bugun); // gunFarki >>> 701
system.debug('gunFarki >>> '+ gunFarki);
//  kac gundur dunyada yasiyorsunuz   kac gunluksunuz

// gunFarki >>> 18286
// kac ayliksiniz

date bugun = date.today();
date olusmusTarih = date.newInstance(1973, 12, 09);
integer ayFarki = olusmusTarih.monthsBetween(bugun);
system.debug('ayFarki >>> '+ ayFarki);  // ayFarki >>> 601


date dogumTarihi = date.newInstance(1973, 12, 09);
double yillikFaiz = 0.14;
integer anaPara = 2000 ;
integer dogumyili = dogumTarihi.year(); // 1973

integer buYil = date.today().year();   // 2024

integer yas = buYil - dogumyili ;
    
integer power = yas*4;

double taban = (1 + (yillikFaiz / 4) );         
double sonuc = anaPara* ( math.pow( taban , power) )  ;
system.debug('sonuc >> '+ sonuc); // sonuc >> 2232859.2786653535


// isLeapYear(year)
 boolean artikYil = date.isLeapYear(2024); // artikYil >>> true
system.debug( 'artikYil >>> ' + artikYil); 


// format ()

Date myDate = Date.newInstance(2022, 9, 9);
String myDate1 = String.valueOf(myDate); // 2022-09-09
system.debug(myDate1);

Date bugun = date.today();
String budaString = bugun.format();  // 2024-01-02
system.debug(budaString);


// DATETIME CLASS 
// date class da  addDays vb kullandik burda yeni methodlari gorecegiz
// now()
// time()
// date()
// newInstance(2022, 01, 31); 
// parse('2022-09-09, 11:04 AM') ;  GMT yapar
// valueOf(dateTimeString);   GMT yapar
// format ()

// getTime()
system.debug('DATE TODAY() >>>' + date.today());  //  >>>2024-01-02 00:00:00
system.debug('DATETIME NOW() >>>' +datetime.now());   // DATETIME NOW() >>>2024-01-02 19:35:34             

DateTime budaDateTime = DateTime.now();
Time buSadeceSaat = budaDateTime.time();
system.debug(buSadeceSaat);  //  14:41:12.142Z     yerel zaman doner


DateTime budaDateTime = DateTime.now();
Date newDate = budaDateTime.date();
system.debug(newDate);   // 2024-01-02 00:00:00  === date.today()
  

// newInstance(year, month, day)
// newInstance(year, month, day, hour, minute, second)

// biz yeni zaman olusturuken yerel saate gore veririz ancak
// newInstance  methodu GMT ye gore datetime olusturur
datetime buAn = datetime.newInstance(2024, 01, 02);
system.debug('buAn >>'+ buAn); // buAn >>2024-01-02 05:00:00

datetime suAn = datetime.newInstance(2024, 01, 02, 22, 46, 10);
system.debug('suAn >>'+ suAn);  // suAn >>2024-01-03 03:46:10

//parse()
Datetime mytime = DateTime.parse('2024-01-02, 02:46 PM') ;
system.debug(mytime); // 2024-01-02 19:46:00   GMT ye gore ceviriyor




//valueOf()
Datetime actualMyDate = Datetime.valueOf('2024-01-31 16:35:50');
system.debug(actualMyDate);  // 2024-01-31 21:35:50 GMT oluyor


// format()
Datetime now1 = Datetime.newInstance(2022, 9, 9, 21, 04, 20);
Datetime now = Datetime.now();


string fark = string.valueOf(now);
system.debug('string fark >>> '+ fark); // string fark >>> 2024-01-02 14:56:42


Datetime now = Datetime.now();

String farkiGor0 =  now.format('yyyy-MM-dd'); // 2022-09-09
system.debug(farkiGor0); 

String farkiGor1 =  now.format('yyyy-MM-dd h:mm'); //  MM ->ay ;  mm->dakika gosterir
system.debug(farkiGor1); // 2022-09-09 9:04

String farkiGor2 =  now.format('yyyy-MM-dd h:mm a');
system.debug(farkiGor2); // 2022-09-09 9:04 PM

String farkiGor3 =  now.format('h:mm');
system.debug(farkiGor3); // 9:04

String farkiGor4 =  now.format('h:mm a'); //  h 12 saat formati
system.debug(farkiGor4); // 9:04 AM

String farkiGor5 =  now.format('H:mm'); // H 24 saat formati
system.debug(farkiGor5); // 21:04

String farkiGor6 =  now.format('H:mm a');
system.debug(farkiGor6); // 21:04 PM






DateTime myDateTime= DateTime.newInstance(2022, 09, 31, 21, 35, 49);
String newTime = myDateTime.format ( 'yyyy/MM/dd hh:mm:ss a', 'Australia/Lord_Howe');
system.debug(newTime); // 2022/10/02 12:35:49 PM

datetime suAn = datetime.now();
system.debug(suAn); // 2024-01-02 20:06:37
String newTime = suAn.format ( 'yyyy/MM/dd hh:mm:ss a', 'Australia/Lord_Howe');
system.debug(newTime);  // 2024/01/03 07:06:00 AM



datetime mytime = datetime.now();
String tokyodaSaat = mytime.format('yyyy-MM-dd HH:mm:ss a', 'JST');
System.debug('tokyoda saat : ' + tokyodaSaat); // tokyoda saat : 2024-01-03 05:08:33 AM


// getTime()
// January 1, 1970, 00:00:00 GMT   dan bu zamana kadar gecen milisaniyeleri verir
// LONG data tipinde donus yapar

LONG milisaniye = Datetime.now().getTime();
System.debug('milisaniye : ' + milisaniye); // milisaniye : 1704226279568

Datetime bugun = DateTime.newInstance(milisaniye);
 
System.debug('bugun : ' + bugun); // bugun : 2024-01-02 20:11:51


// bulundugunuz time zone datetime formatinda isterseniz
//  1 saat 3 600 000    buna gore toronto 4 saat geride 
// 4* 3 600 000 = 14,400,000

LONG milisaniye = Datetime.now().getTime();

Datetime bugun2 = DateTime.newInstance(milisaniye - 14400000);
 
System.debug('bugun : ' + bugun2); // bugun : 2024-01-02 16:14:59




























