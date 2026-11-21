/*
By the end of this lesson, you should be able to explain:
- var versus final versus const versus late.
- Compile-time versus runtime values.
- Reassignment versus object mutation.
- Definite assignment and lazy initialization.
- late final and LateInitializationError.
- Constant constructors and immutable objects.
- How to select the correct declaration in professional Dart code.



I understand all the things about var, final, const, late 

1. var : we can change  the  value of a variable like i give you example of this like if we assign string sowe can change the value of string if we assign int or any data type we can get error  
void main(){
    var number = 10;

    number = 11;

    print(number);

}

void main() {
    var number = 12;
    
    number = 55;
    number = "arfat"; it give us error in var but not in dynamic

    print(number);
    
 }




2.  final : we can assign a value for variable only once we can't change after we assign a value


void main(){
    final String first_name = "arfat";

    // print(first_name);

    first_name = "rohan";

    print(first_name);
 }



3. const : we can assign the value but we can't change later . when we compile the code const should know
 in advance what our value 


 void main() {
    const String firstName = "Arfat";

    firstName = "Vinay";
    print(firstName);
}



Does final make an object immutable?
my answer is yes you can add the item but you can change the whole thing who already inside in these list

void main(){
    List<String>  systems = ["Mouse", "Laptop", "MotherBoard"];
    systems.add("RAM");
    products = ['Laptop']; // Compile-time error
    print(systems);
}

Mutable list

final items = [1, 2];

items.add(3);

Allowed

Result: [1, 2, 3]


Constant list

const items = [1, 2];

items.add(3);

Runtime error

List remains unchanged




8. late : we can assign a value of a variable afterward we can put variable empty just like in python we use pass we used late in dart.


void main() {
  int quantity;

  quantity = 3;

  print(quantity);
}

you can combine late and final together



void main() {
  late final String sessionId;

  sessionId = 'SESSION-1001';

  but if you assign it again like this
  sessionId = 'SESSION-1002"; it'll give you error - runtime failure

  print(sessionId);
}

Exercise 1 — Beginner: Choose the correct declaration

Write a program containing:
- A fixed app name.
- A current login time.
- A shopping-cart quantity that changes.
- A username that can be assigned once.
Use const, final, var or late final appropriately and explain each choice.

Exercise 2 — Intermediate: Mutable versus immutable collections

Create one list declared with final and another with const.

Attempt to add an item to each list. For the constant list, use try/catch to demonstrate and explain the runtime failure.

Explain why the two lists behave differently.

Exercise 3 — Advanced: Lazy initialization

Create a class named SettingsManager.

It must have a method that prints "Loading settings..." and returns a settings value.

Store the result using a lazily initialized late final field.

Access that field twice and demonstrate that the loading method runs only once.


J. Practical assignment — Order Configuration System
Build a console application that represents a simple mobile shopping order.
Assignment 09
Independent implementation

Requirements
- Create a Product class containing a product name and price in paise.
- Use final fields and a const constructor.
- Define a fixed discount threshold using const.
- Create a shopping-cart quantity that can change.
- Calculate the subtotal using a function.
- Create a late final receipt identifier initialized lazily.
- Validate negative prices and quantities less than or equal to zero.
- Explain which variables are mutable and which are immutable.
- Run dart analyze and test the application.
Use these input values:
Field	Value
Product	Wireless Mouse
Price	₹499
Quantity	3
Discount threshold	₹1,000
Discount rate	10%

Expected subtotal: ₹1,497.00

Expected discount: ₹149.70

Expected payable: ₹1,347.30

Important: Do not make pricePaise mutable just to change a product's price. Explore how you would represent a new product value instead.

Submit your Dart code, actual console output, and an explanation of the initialization order.


 */


