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



 */






