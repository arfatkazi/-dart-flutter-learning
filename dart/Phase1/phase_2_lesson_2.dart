/* 

  Today's objectives
- Understand int, double, num, String, bool, Null and Never.
- Convert strings into numbers safely.
- Understand parse() versus tryParse().
- Convert integers to doubles and doubles to integers.
- Understand numeric precision, division and rounding.
- Work with strings, Boolean expressions and nullable values.
- Identify static type errors, conversion failures and logical bugs.
- Apply appropriate types in mobile app data models.

*/


/*  I am understanding about Datatypes
    

Type	                Example	                 Purpose
int	                   25	                     Whole  numbers
double                 99.95	                 Floating-point numbers
num	                   25 or 99.95	           General numeric values
String                 'Rahul'	               Text
bool	                 true	                   Boolean conditions
Null	                 null	                   Absence of a value
Never	                 No normal value         Computation never completes normally




1. Understanding int

void main() {
  int age = 26;
  int quantity = 3;
  int temperature = -5;

  print(age);
  print(quantity);
  print(temperature);
}


you can perform arithemetic on integer (int)


void main() {
  int a = 10;
  int b = 3;

  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b); 3.333333335
  print(a ~/ b); 3 
  print(a % b); 1
}

2. understanding double

void main() {
  double height = 160.5;
  double weight = 64.2;

  print(height);
  print(weight);
}



void main() {
  double a = 0.1;
  double b = 0.2;

  print(a + b);
  print(a + b == 0.3); it give false because binary floating point cannot exactly represent every decimal fraction.
}


3. Understanding num


num is the common supertype of int and double

SIMPLIFIED NUMERIC TYPE HIERARCHY

num
|
int
|
double

void main() {
  num amount = 100;

  print(amount); 100

  amount = 150.75; 

  print(amount); 150.75
}


Use num when an API genuinely needs to support either numeric type. Otherwise, prefer the more specific int or double.



5. understanding string

// I'll use the useful types of string 


void main() {
  
  String firstName = '   Arfat   ';
  String lastName = 'Kazi';

  print('firstname: $firstName');

  print(firstName.trim());
  // print(firstName.toUpperCase().trim());
  // print(firstName.toLowerCase().trim());
  print(firstName.contains('Arfat'));
  print(firstName.trim().length);
  print(lastName.startsWith('a'));


 
}

}





6. Understanding bool

it's either True or False nothing else

I give one example by writing code

final String firstName = 'Arfat';
final int age = 18;

 bool isAdult = age ? 18 : 'Not valid age';

if (age >= 18) { its either true or false if it's true it printed valid if this is false itcan go to else statement  
    print("License valid!") 

}else{
   print("Notvalid!")
}



void main() {

final int age = 20;
bool isAdult = age >= 18;

print(isAdult);
}


I understand also a null or never 

String? username = null; null cannot hold value at all 
? makes the variable nullable


Never 
Never represents a computation that never completes normally.


Never failRegistration() {
  throw StateError('Registration failed');
}
Calling this function always throws, so it never returns a normal value.

I also  understand type conversion.


String to integer


void main() {
  //  final String myAge  = "26";
  //  print(myAge);
  //  print(myAge.runtimeType);

   
  //  int age = int.parse(myAge);
  

  // print(age);
  // print(age.runtimeType);


   String input = "9";

   final int quantity  = int.parse(input);

   print( quantity * 100);

   // suppose if i do int.parse("three"); it gives me error

  //  that's why use tryParse() don't throw an error instead your value will be null

  // I understand the difference between parse and tryParse() 
  //
  //parse() versus tryParse()
  
parse()	tryParse()
Returns the converted value if valid	Returns the converted value if valid
Throws a FormatException for invalid input	Returns null for invalid input
Appropriate when malformed input is exceptional	Often preferable for user-entered text
May require exception handling	Works naturally with null checks


Example:

void main() {
  String input = 'abc';

  int? quantity = int.tryParse(input);

  if (quantity == null) {
    print('Invalid quantity');
    return;
  }

  print('Quantity: $quantity');
} 
  
}


instedof parse I'll use tryParse()
If i want to  string to integer but string is number like "9"  I'll use

int.tryParse()
If i want to integer to double I'll use
double.tryParse();



Double to integer
Several operations behave differently.

CONVERSION COMPARISON
5.8.toInt()	     5
5.8.round()	     6
5.8.floor()	     5
5.8.ceil()	     6
(-5.8).toInt()	−5
(-5.8).floor()	−6


- toInt() truncates toward zero.
- round() rounds to the nearest integer.
- floor() rounds toward negative infinity.
- ceil() rounds toward positive infinity.


Number to String
void main() {
  int quantity = 3;
  double price = 299.5;

  String quantityText = quantity.toString();
  String priceText = price.toStringAsFixed(2); this will return a string  not a double

  print(quantityText);
  print(priceText);
}





String to Boolean


Dart provides bool.parse() and bool.tryParse()


String to Boolean

void main() {
  bool? isEnabled = bool.tryParse('true');

  print(isEnabled);
}




*/



