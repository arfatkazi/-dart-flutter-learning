/*
    At the end of this lesson, you should independently understand and implement:
1. if, else if, else and nested conditions.
2. Conditional expressions and Dart 3 switch expressions.
3. Switch statements, patterns, guards and exhaustiveness.
4. for, for-in, while and do-while loops.
5. break, continue, labels and early return.
6. Nested loops, infinite loops and off-by-one errors.
7. Assertions, scope and control-flow debugging.


1. What is a String?
A String is used to represent text.


void main() {
  String name = 'Rahul';
  String language = 'Dart';

  print(name);
  print(language);
}





A string can contain letters, numbers, symbols, spaces and Unicode text.

String username = 'Arfat';
String phoneNumber = '9876543210';
String message = 'Welcome to Dart!';


2. What is an operator?


int total = 100 + 200;

100 and 200 are operands.
+ is an addition operator.
300 is the calculated value.
= assigns the value to total.


3. What is an expression?

10 + 20
price * quantity
age >= 18
username.isEmpty


4 . string interpolation 


void main() {
  String name = 'Rahul';
  int age = 26;

  print('My name is $name');
  print('I am $age years old');
  print('Next year I will be ${age + 1}');
}


5. String concatenation
void main() {
  String firstName = 'Rahul';
  String lastName = 'Sharma';

  String fullName = firstName + ' ' + lastName;

  print(fullName);
}


Dart also supports adjacent string literals:


const message = 'Welcome to '
    'Dart Programming';



6. Escape sequences
Sometimes you want special characters inside a string.


    Sequence	                  Meaning
    \n	                        New line
    \t	                        Tab
    \\	                        Literal backslash
    \'	                        Literal single quote
    \"	                        Literal double quote
    \$	                        Literal dollar sign

7. Raw strings


void main() {
  String path = r'C:\Users\Rahul\Documents';

  print(path); output C:\Users\Rahul\Documents
  
  The r prefix creates a raw string.

This is useful for Windows paths, regular expressions and text containing many backslashes.
}

8. Multiline strings



void main() {
  String receipt = '''
===== ORDER RECEIPT =====
Customer: Rahul
Product: Wireless Mouse
Quantity: 2
=========================
''';

  print(receipt);
}



9. Important String methods and properties
STRING OPERATIONS
'dart'.toUpperCase()	                                 DART
'DART'.toLowerCase()	                                 dart
' Dart '.trim()                                 	     Dart
'Dart'.length	                                         4
'Flutter'.contains('utt')	                            true
'Dart'.startsWith('Da')	                              true
'a,b,c'.split(',')	                                  [a, b, c]
'Dart'.replaceAll('D', 'C')	                          Cart


Strings are immutable: methods such as trim() and replaceAll() return new strings rather than modifying the original string object. A variable can be reassigned to one of those results.


10. Arithmetic operators


Operator             	Meaning	                         Example
   +	                  Addition	                      10 + 3 → 13
   -	                 Subtraction	                    10 - 3 → 7
   *	                 Multiplication	                  10 * 3 → 30
   /	             Division returning double	          10 / 2 → 5.0
   ~/	             Truncating division	                10 ~/ 3 → 3
   %	             Remainder/modulo operation	        10 % 3 → 1
   -x	             Unary negation	                     -10



void main() {
  int a = 10;
  int b = 3;

  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b);
  print(a % b);
}

void main() {
  int quantity = 5;

  quantity += 2; // 7
  quantity -= 1; // 6
  quantity *= 3; // 18
  quantity ~/= 2; // 9

  print(quantity);

  int count = 5;

      count++; // count becomes 6
      count--; // count becomes 5

      print(count);

    
}


void main() {
  int a = 5;
  int b = 5;

  print(a++); // a++ produces the old value before incrementing.
  print(++b); // ++b increments first and then produces the new value 

  print(a);
  print(b);
}









12. Relational and equality operators


void main() {
  int age = 20;

  print(age > 18);
  print(age < 18);
  print(age >= 18);
  print(age <= 18);
  print(age == 18);
  print(age != 18);
}


important distinction 

age = 20;  // Assignment
age == 20; // Equality comparison


13. Logical operators
Dart provides:
- && — Logical AND
- || — Logical OR
- ! — Logical NOT


void main() {
  int age = 22;
  bool hasId = true;

  bool canEnter = age >= 18 && hasId;

  print(canEnter);
}


example of short circuit 

&& is working when both are true 
bool checkPayment(){
  print("Checking Paymnet...........");
  return true;
}


void main() {

bool isCardValid = false;


if(isCardValid && checkPayment()){
  print("Proceed");
}

 print('Finished');
}


|| anyone true it'll work

I have learned about Null-aware operators — Very important
?. operator — Safe member access
 
 String? username 

 print(username?.length);


 ?? operator

 void main() {
  String? username;

  String displayName = username ?? 'Guest';

  print(displayName);
}



The ??= operator — Assign only if null

void main() {
  String? city;

  city ??= 'Mumbai';
  city ??= 'Pune';

  print(city);
}



The ! operator — Null assertion

String? name = 'Rahul';

print(name!.length);


Type-test and cast operators
Operator	Meaning
is	Checks whether a value has a type
is!	Checks whether it does not have a type
as	Casts a value to a compatible type

void main(){
  Object value = "Dart";


  if(value is String){
    print(value.toUpperCase());
  }



  print(value is! int);
}


18. Cascade operators — .. and ?..


I used in this  .. operator
void main(){

  final products = <String>[]

  ..add("Mobile")
  ..add("Monitor")
  ..add("Laptop");

  print(products);
}


I used in this ?.. operator


void main() {
  List<String>? products;

  products
    ?..add('Mouse')
    ..add('Keyboard');

  print(products);
}

Dart also supports bitwise operators (&, |, ^, ~, <<, >>, >>>), index operators ([], []=), conditional indexing (?[]) and user-defined operator overloading for supported operators.



void main() {
       String? username;
       String? city = "Mumbai";


      final displayName = username ?? "Guest";
      final cityLength = city?.length ?? 0;



      print(displayName);
      print(cityLength);

}


 */



