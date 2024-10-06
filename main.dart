void main() {
	final customer = Customer("Khalid");
	customer.add(100); // 100 to the customer  because customer dont have disc
  print(customer.getPurchaseAmount());  // we call the PurchaseAmount only  so 100
	  final loyalCustomer = LoyalCustomer("Khalid"); // then we will do the loyal discount
  loyalCustomer.add(200); // loyal have 200  before disc
  print(loyalCustomer.getPurchaseAmount()); // we will call the total amount after disc so 200 -10%
}

class Customer{
    String name;
    double _purchaseAmount = 0; // i do convert it to private

    Customer(this.name);

    void add(double price){
        _purchaseAmount += price;
    }

    double getPurchaseAmount() {
        return _purchaseAmount; 
    }
}
class LoyalCustomer extends Customer{
 LoyalCustomer (super.name); //  inherits the super.name from  parent customer .
 @override
  double getPurchaseAmount(){
    double discount = _purchaseAmount * 0.1 ; // discount 10%
    return _purchaseAmount- discount ;
  }
}
