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


*/
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
      throw ArgumentError('Pricecannot be negative');
    }
  }
 
  



}

void main() {
  final product  = Product(name: 'Arfat', pricePaise: 5000);
  print(product.name);
  
}
