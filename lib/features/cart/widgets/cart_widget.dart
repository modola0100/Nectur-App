import 'package:flutter/material.dart';
import 'package:nectar_ui/features/cart/model/cart_item.dart';

class CartWidget extends StatelessWidget {
  final CartItem item;
  final VoidCallback Increment;
  final VoidCallback Decrement;
  final VoidCallback Remove;

  const CartWidget({
    super.key,
    required this.item,
    required this.Increment,
    required this.Decrement,
    required this.Remove,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              item.imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        item.name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close, size: 20.0),
                      onPressed: Remove,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    ),
                  ],
                ),
                SizedBox(height: 4.0),
                Text(
                  item.details,
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove, size: 20.0),
                      onPressed: Decrement,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    ),
                    SizedBox(width: 8.0),
                    Text('${item.quantity}', style: TextStyle(fontSize: 16.0)),
                    SizedBox(width: 8.0),
                    IconButton(
                      icon: Icon(Icons.add, size: 20.0),
                      onPressed: Increment,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    ),
                    Spacer(),
                    Text(
                      '\$${item.price * item.quantity}',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
