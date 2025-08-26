class CartItem {
  final String name;
  final String details;
  final String imageUrl;
  final double price;
  int quantity;

  CartItem({
    required this.name,
    required this.details,
    required this.imageUrl,
    required this.price,
    this.quantity = 1,
  });

  double get totalPrice => price * quantity;
}
