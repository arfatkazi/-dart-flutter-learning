
/*Exercise 1 — Beginner

Write a Dart program that prints your name, your desired career, and one programming language you want to master. Use variables instead of placing every value directly inside print().

String info(String name, String career, String programming) {
  return 'My name is $name, I want to become a $career, '
      'and I know $programming. ';
}

void main() {
  final String introduction1 = info("Arfat", "Devops Engineer", "Javascript");
  print(introduction1);
} */

//   Exercise 2 — Intermediate

/* Create a product with a price of ₹499 and quantity of 3. Calculate its subtotal and print a formatted order summary.

Then change the quantity and predict the new output before running the code.
double calculateSubtotal(double price, int quantity) {
  print('Quantity: $quantity \nPrice: $price');
  return price * quantity;
}

void main() {
  final double sub_total = calculateSubtotal(499, 3);

  print('Sub_Total: $sub_total');
} */

// Exercise 3 — Advanced
/* Calculate an order subtotal, apply a 10% discount if the subtotal is at least ₹1,000, and print the discount and final amount. Use a separate function for at least one calculation.

Add a check so negative quantities cannot produce a valid order total. */

/* double calculateSubtotal(double price, int quantity) {
  return price * quantity;
}

void main() {
  final double price = 499;
  final int quantity = 3;

  final double sub_total = calculateSubtotal(price, quantity);

  if (price < 0 || quantity < 0) {
    print("Price and Quantity cannot be Negative");
    return;
  }

  double discount = 0;

  if (sub_total >= 1000) {
    discount = sub_total * 0.10;
  }

  final double finalAmount = sub_total - discount;

  print('Quantity: $quantity');
  print('Price: ₹${price.toStringAsFixed(2)}');
  print('Subtotal: ₹${sub_total.toStringAsFixed(2)}');
  print('Discount: ₹${discount.toStringAsFixed(2)}');
  print('Final amount: ₹${finalAmount.toStringAsFixed(2)}');
}*/
