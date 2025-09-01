class CartItem {
  final String name;
  final String details;
  final String imageUrl;
  final double price;
  int quantity;
  final int id;

  CartItem({
    required this.name,
    required this.details,
    required this.imageUrl,
    required this.price,
    required this.id,
    this.quantity = 1,
  });

  double get totalPrice => price * quantity;
}
