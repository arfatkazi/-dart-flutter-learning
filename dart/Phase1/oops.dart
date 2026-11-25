
/*

Phase 6 — Object-Oriented Programming

Lessons 31–36

LESSON COVERAGE

Lesson 31 starting · 0 of 6 Phase 6 lessons certified

Phase 6 curriculum
Lesson	Topic
31	Classes, objects, fields, methods and constructors
32	Encapsulation, private members, getters and setters
33	Inheritance, super, overriding and polymorphism
34	Abstract classes, interfaces and contracts
35	Mixins, composition and reusable behavior
36	Advanced constructors, object equality and OOP design




// 1.  Classes, Objects, Fields, Methods and Constructors
1. What is Object-Oriented Programming?
Object-Oriented Programming (OOP) is a programming approach that organizes software around objects containing data and behavior.



class Student{ // this is the class 
Fields — the data an object stores
  String name;
  int age;
  int rollNo; this is all the field  inside a class

  Product(this.name, this.age,this.rollNo); this is constructor // Constructor — sets up a new object
when yuo call this contructor in main 
Product('Laptop', 55000);

what this mean
this means the current object.
 Product(this.name, this.age,this.rollNo)

 The same initialization can be written more explicitly:
Product(String productName, double productPrice)
    : name = productName,
      price = productPrice;

The : introduces an initializer list, which sets the fields before the constructor body runs. For now, the shorter this.name form is enough.

Constructor rules:
- Its unnamed form matches the class name exactly: Product.
- It has no return type—not even void.
- You invoke it when creating an object.


Product(this.name, this.price);      // Constructor
void showDetails() { /* ... */ }    // Method



Object — an actual instance of a class

Now create two products:
void main() {
  Product laptop = Product('Laptop', 55000);
  Product mouse = Product('Mouse', 800);

  print(laptop.name); // Laptop
  print(mouse.name);  // Mouse


  Object — an actual instance of a class

Now create two products:
void main() {
  Product laptop = Product('Laptop', 55000);
  Product mouse = Product('Mouse', 800);

  print(laptop.name); // Laptop
  print(mouse.name);  // Mouse
}


    Product laptop = Product('Laptop', 55000);
    

    this is we called method because it's inside in the class
    A method is a function declared inside a class.
    void showDetails() {
  print('Product: $name');
  print('Price: ₹$price');
The method uses the fields of the object on which it was called:
laptop.showDetails(); // Uses laptop's name and price.
mouse.showDetails();  // Uses mouse's name and price.

methods also accept arugment just like our standard function

void priceInfo(int price,int quantity){
    return price * quantity;
}
}


class Student: Declares a class named Student.
String name: Declares an instance field.
int age: Declares another instance field.
void introduce(): Defines an instance method.
Student(): Creates an object using a constructor.
student.introduce(): Calls a method on that object.


class User  {
   String firstName;
   String lastName;
   int age;
   bool isLogin;


  User(this.firstName,this.lastName,this.age,this.isLogin);

  void info(){
      print(" Firstname: $firstName\n LastName: $lastName");
      print(" Age: $age");
      print(" Login: $isLogin");
}
 

}

void main(){

  List<User>  users =  [

    User("Arfat", "Kazi", 26, true),
    User("Ayaan", "Wagooh", 23, false),
  ];

 //  print(user1); // It'll show you user instance
for(final user in users){
    user.info();
    print('-------');
}

  
}


class User{
  String firstName;
  String lastName;
  int age;
  String dob;
  String gender;

  User(this.firstName,this.lastName,this.age,this.dob,this.gender);

  void info(){ // this is not function in class we called methods
    print(" FirstName: $firstName");
    print(' LastName: $lastName');
    print(' Age: $age');
    print(' Date Of Birth: $dob');
    print(" Gender: $gender");
  }

}


void main(){
   List<User> users = [
  User('Ayaan', 'Waghoo', 26, '2000-03-15', 'Male'),
  User('Sara', 'Khan', 24, '2002-07-20', 'Female'),
  User('Arfat', 'Kazi', 26, '2000-05-10', 'Male'),
  User('Aisha', 'Shaikh', 23, '2003-01-12', 'Female'),
  User('Rahul', 'Sharma', 25, '2001-09-05', 'Male'),
  User('Priya', 'Patel', 22, '2004-04-18', 'Female'),
  User('Zaid', 'Ansari', 27, '1999-08-22', 'Male'),
  User('Sana', 'Mirza', 24, '2002-06-14', 'Female'),
  User('Rohan', 'Verma', 28, '1998-02-09', 'Male'),
  User('Fatima', 'Syed', 25, '2001-10-30', 'Female'),
  ];


  for(final user in users) {
    print('--------------------------');
    print('\n');
    user.info();
    print('\n');
    print('--------------------------');

  }
}


// Example three

class Product { // Class
  String name;
  double price;
  String description;
  bool isAvailable;


 Product({ // Connstructor
  required this.name,
  required this.price,
  required this.description,
  required this.isAvailable
 });

  void detail(){ // Method
      print('--------------------');
      print('Name: $name');
      print('Price: ${price.toStringAsFixed(2)}');
      print('Description: $description');
      print('Available: $isAvailable');


  }


}


void main(){
    List<Product> products = [
      Product(
    name: 'Laptop',
    price: 55000.0,
    description: 'Laptop with 16GB RAM and 512GB SSD.',
    isAvailable: true,
  ),
  Product(
    name: 'Smartphone',
    price: 25000.0,
    description: 'Smartphone with 128GB storage.',
    isAvailable: true,
  ),
  Product(
    name: 'Headphones',
    price: 2500.0,
    description: 'Wireless headphones with a built-in microphone.',
    isAvailable: false,
  ),
  Product(
    name: 'Keyboard',
    price: 1500.0,
    description: 'Mechanical keyboard with backlit keys.',
    isAvailable: true,
  ),
  Product(
    name: 'Mouse',
    price: 800.0,
    description: 'Wireless mouse with adjustable sensitivity.',
    isAvailable: true,
  ),
  Product(
    name: 'Monitor',
    price: 12000.0,
    description: '24-inch Full HD monitor.',
    isAvailable: false,
  ),
  Product(
    name: 'Smartwatch',
    price: 4500.0,
    description: 'Smartwatch with activity and sleep tracking.',
    isAvailable: true,
  ),
  Product(
    name: 'Speaker',
    price: 3000.0,
    description: 'Portable Bluetooth speaker.',
    isAvailable: true,
  ),
  Product(
    name: 'Power Bank',
    price: 1800.0,
    description: '10000mAh power bank with fast charging.',
    isAvailable: false,
  )
    ];
   
   

    for(final product in products) {
      product.detail();
      print('-------------');
    }
}




class User{
  String name;
  bool isGuest;
  
  User(this.name) : isGuest = false;

  User.guest()
    : name = 'Guest',
      isGuest = true;


}


void main(){
 final user = User('Arfat');
 final guest = User.guest();
 print('${user.name}: ${user.isGuest}');
 print('${guest.name}: ${guest.isGuest}');


}


class Product {
  final String name;
  final int pricePaise;

  Product({
    required this.name,
    required this.pricePaise,
  
  
  }){
    if(name.trim().isEmpty){
      throw ArgumentError("Name cannot be Empty");
    }

    if(pricePaise < 0) {
      throw ArgumentError('Price cannot be negative');
    }
  }
 
  



}

void main() {
  final product  = Product(name: 'Arfat', pricePaise: 5000);
  print(product.name);
  print(product.pricePaise);


  
}




class Products{
  String name;

  Products(this.name);


}

void main(){
  final first = Products("mouse");
  final second = Products("mouse");


  print(identical(first, second));
  print(first == second);

}

class Counter {
  int value = 0;



}

void main(){
  final first = Counter();  //first and second refer to the same object.
  final second = first;

  second.value = 30;

  print(first.value);  

}


class Employee{
  static int employeeCount = 0;

  final String name;

  Employee(this.name){
    employeeCount++;
  }


}

void main(){
  Employee('arfat');
  Employee("Rahul");

  print(Employee.employeeCount);
}






class Student{
  final String firstName;
  final int rollNo;
  final int marks;

  Student({
    required this.firstName,
    required this.rollNo,
    required this.marks,
  }
  );

  bool hasPassed(){
    return marks >= 90;
  }
  void studentInfo(){
    print('------------');
    print('FirstName: $firstName');
    print('RollNo: $rollNo');
    print('Marks: $marks');
    print('Passed: ${hasPassed()}');

  }

}


void main(){
   final student1 = Student(firstName: 'arfat', rollNo: 69, marks: 98);
    student1.studentInfo();
}






class Product{ // this is class which is blueprint it's like a building
  final String name; //   // FIELDS: each object's data.
   double price;

  Product(this.name,this.price); //  // CONSTRUCTOR: initializes a new object.

  void detailInfo(){ // METHOD: displays this object's data.
    print('--------');
    print('Product Detail');
    print('Name: $name');
    print('Price: ${price.toStringAsFixed(2)}');
  }


  double calculateTotal(int quantity){ // METHOD: displays this object's data.
    return price * quantity;
  }


}


void main(){
  // final products = Product('Laptop', 2000);
  // List<Product> products = [ // // Create two separate OBJECTS using List
  //   Product('Laptop', 35000), //OBJECTS
  //   Product('Mobile', 60000), //OBJECTS
  //   Product('GPU', 147000), //OBJECTS
  // ];
 // Create two separate OBJECTS.
   Product laptop = Product('Laptop', 55000);
   Product mouse = Product('Mouse', 800);


  //  mouse.detailInfo();
  //  laptop.detailInfo();

  // for(final product in products){
  //   // product.detailInfo();
  //  print('${product.name}: ${product.calculateTotal(3)}');
  // }

  double total = mouse.calculateTotal(3);
  print("mouse total: $total");

   laptop.price = 50000;
   print('Updated laptop price: ₹${laptop.price.toStringAsFixed(2)}');

}

/* One detail from your earlier code: named constructors versus named parameters

This constructor uses named parameters:
Product({
  required this.name,
  required this.price,

  You call it like this:
Product(name: 'Laptop', price: 55000);
});*/

*/


/*   

Understand encapsulation and information hiding.
Learn how Dart handles public and private members.
Understand library-level privacy versus class-level privacy.
Create getters using get.
Create validated setters using set.
Understand read-only and computed properties.
Choose between setters and business methods.
Protect mutable collections and class invariants.
Build an encapsulated banking account model.








*/
