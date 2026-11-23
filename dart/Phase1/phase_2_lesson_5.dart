/*

I understand all of this in this lesson
if, else if, else and nested conditions.
Logical operators and short-circuit evaluation.
switch statements and expressions.
Dart 3 pattern matching, if-case, guards and exhaustiveness.
for, for-in, while and do-while.
break, continue, return and loop labels.
Collection if and collection for.
Assertions, infinite loops and common bugs.
Practical control-flow design.


// 1. if-else  syntax

void main(){
  //  final String first_name = "Arfat";
   final String first_name = "Rahul";


   final int age = 26;

    if(first_name == "Arfat" && age >= 18){
         print("I know him");
    }else{
         print("I don't know him");

    }
}


I'll give full syntax of if-elseif-else

void main() {
       
  int marks = 82;

  if (marks >= 90) {
    print('Grade A');
  } else if (marks >= 75) {
    print('Grade B');
  } else if (marks >= 60) {
    print('Grade C');
  } else {
    print('Needs improvement');
  }
}



I also understand nested if and else


void main() {
  bool isLoggedIn = true;
  bool isEmailVerified = false;

  if (isLoggedIn) {
    if (isEmailVerified) {
      print('Access granted');
    } else {
      print('Verify your email');
    }
  } else {
    print('Please sign in');
  }
  }


  I also understand Short circuit evaluation

  with && the second expression is evaluated only if the first is true.
With ||, the second expression is evaluated only if the first is false.

bool checkPayment() {
  print('Payment check executed');
  return true;
}

void main() {
  bool isCartValid = false;

  if (isCartValid && checkPayment()) {
    print('Order accepted');
  }

  print('Finished');
}


I am learning about switch statements


  void main() {
  int choice = 2;

  switch (choice) {
    case 1:
      print('Check balance');

    case 2:
      print('Withdraw money');

    case 3:
      print('Deposit money');

    case 4:
      print('Exit');

    default:
      print('Invalid selection');
  }
}

like other languages we used break after each case but in modern dart we don't need break in every case. empty case body will directly go to next case

I learned about switch expressions
void main() {

  int statusCode = 300;


  String message = switch(statusCode) {
     200 => "Success",
     401 => "Unauthorized",
     300 => "Forbidden",
     404 => "Not found",
     500 => "Internal server error",

     _=> "Unknown status",


  };

  print(message);
}

Dart 3 pattern matching and if-case

void main() {

  Object data = [200,"Success"];

  if( data case[int code, String message]){
    print('Status: $code');
    print('Message: $message');
  }else{
    print('Invalid data');
  }
}

void main() {

  int marks = 85;

  String grade = switch(marks) {
    >= 90 && <= 100 => "Excellent",
    >= 70 && < 90 => "Very Good",
    >= 60 && < 80 => "Good",
    >= 50 && < 60 => "Satisfactory",
    _=> "Invalid Marks",

  }; 


  print(grade);
}


Dart pattern 3

String classify(Object value) => switch (value) {
  int number when number > 0 => 'Positive integer',
  int number when number < 0 => 'Negative integer',
  int() => 'Zero',
  _ => 'Invalid number',
};

void main() {
  print(classify(10));
  print(classify(-5));
  print(classify(0));
  print(classify('Arfat'));
  print(classify(2.5));
}

String status(bool isActive) => switch(isActive) {
  true => "isActive",
  false => 'InActives',
}






I am Learning about for loop , for in loop , while,  do while 
 for(int i = 0; i <= 5; i++){
    print(i);
  } it prints from 0 to 5

void main() {
 for(int i = 1; i <= 10; i++) {
  print("10 x ${i} = ${10 * i}");
 }
}


for-in loop 

  final products = <String>[]
   ..add("Mobile")
   ..add("Laptop")
   ..add("iPad");

   for(String product in products) {
    print(product);
   }


while loop

   int count = 1;

   while(count <= 5){
       print("count: $count");
       count++;
   }

do{
    print("Count: $count");
    count++;

   }while(count < 3);



 outerloop:
    for(int row = 1; row <= 5; row++){
      for(int col = 1; col <= 3; col++){
          if(row == 1 && col == 3){
            
            break outerloop;
          }

          print('$row, $col');
      }
    }


Dart supports conditions directly within collection literals.

void main(){
 
  bool isAdmin = true;

  final menu = [
    'Home',
    'About us',
    if(isAdmin) 'Admin Label'
  ];


  print(menu);
   
   
}


  void main() {
  final squares = [
    for (int i = 1; i <= 5; i++) i * i,
  ];

  print(squares);
}
   void main() {
  void main() {
  final squares = [
    for (int i = 1; i <= 5; i++) i * i,
  ];

  print(squares);
}
}
 

 */


