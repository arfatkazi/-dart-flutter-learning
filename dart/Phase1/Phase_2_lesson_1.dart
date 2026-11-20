/* Phase 2 — Dart Fundamentals

Lesson 1 of 6


0 of 6 Phase 2 lessons certified · Lesson 07 in progress

What you will learn
- What variables actually are.
- The difference between a variable and an object.
- Static typing versus dynamic typing.
- var, explicit types, dynamic, Object and Object?.
- Type inference and reassignment.
- Type safety, runtime checks and common errors.
- When to choose different declarations in real Flutter applications.

I understand what is var ,  Object , Object? , dynamic
*/


// I am learning all about variable 

//1. var 

// Type inference with var

// Dart can infer a variable's type from its initializer.
/* void main(){
 var username = "arfat";
 var age = 26;
 var isPermitValid = true;
 

 print(username.runtimeType);
 print(age.runtimeType);
 print(isPermitValid.runtimeType);

// one more thing var does not mean variable can contain any type example
  var  years = 2000;
  print(years);

  years = 'three'; //it give us compile time error
  print(years);
}
*/


// 2. dynamic

// understanding dynamic it is different from var


// I understand that I avoid dynamic in production level as well as development level 

/* void main() {
     dynamic value = 10;

     value = 'Hello';
     value = true;
    value = 199.99;

  print(value);
}
 */

// 3. Understanding Object



/* void main() {
  Object value = 100;

  value = 'Hello';
  value = true;


  print(value);
}*/ 

// what is the difference between dynamic and object
// Both can refer to values of different runtime types, but Object retains static type checking for example


/*
Object value = 'Hello';

// print(value.toUpperCase()); // Static-analysis error

The analyzer does not permit the call because toUpperCase() is not a member of Object.

// one more thing In Object? we can set null value
Object? value = "arfat";
value = 'null';

print(value);

I understand the diference between var, dynamic,  Object, Object? 

*/


// Code Examples

// 1. Changing values

/* 
     void main() {
    
     String firstName = "Arfat";
      int age = 26;

      firstName = "Rohan";
      age = 30;

      print("First Name: $firstName");
      print("Age: $age");
    }

*/
   


// 2 Type promotion

void main() {
  
void displayValue(Object value) {
  if (value is String) {
    print('Text length: ${value.length}');
  } else if (value is int) {
    print('Double the number: ${value * 2}');
  } else {
    print('Another supported value');
  }
}


  displayValue('Dart');
  displayValue(25);


}

/*



I. Practice exercises
Exercise 1 — Beginner

Create variables representing a customer's name, age, wallet balance and payment status. Use appropriate explicit types, update two values, and print a formatted profile.

Exercise 2 — Intermediate

Declare four variables using var, dynamic, Object and Object?.

Assign different values to each where permitted. Include commented-out examples of invalid operations and explain why they fail.

Exercise 3 — Advanced

Write a function accepting Object? input.

If the input is a positive integer, print its square. If it is a non-empty string, print its length. If it is null or unsupported, print a meaningful error.

Do not use dynamic or unsafe casts.

*/











