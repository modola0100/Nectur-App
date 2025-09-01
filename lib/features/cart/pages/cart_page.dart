import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constants/app_images.dart';
import 'package:nectar_ui/core/functions/naviagtion.dart';
import 'package:nectar_ui/core/widgets/main_button.dart';
import 'package:nectar_ui/features/accept_order/accept_screen.dart';
import 'package:nectar_ui/features/cart/model/cart_item.dart';
import 'package:nectar_ui/features/cart/widgets/cart_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<CartItem> cartItems = [
    CartItem(
      name: 'Bell Pepper Red',
      details: '1kg, Price',
      imageUrl: AppImages.banana,
      price: 4.99,
      id: 1,
    ),
    CartItem(
      name: 'Egg Chicken Red',
      details: '4pcs, Price',
      imageUrl: AppImages.apple,
      price: 1.99,
      id: 2,
    ),
    CartItem(
      name: 'Organic Bananas',
      details: '12kg, Price',
      imageUrl: AppImages.banana,
      price: 3.00,
      id: 3,
    ),
    CartItem(
      name: 'Ginger',
      details: '250gm, Price',
      imageUrl: AppImages.banana,
      price: 2.99,
      id: 4,
    ),
    CartItem(
      name: 'Tomato Fresh',
      details: '500gm, Price',
      imageUrl: AppImages.apple,
      price: 2.49,
      id: 5,
    ),
  ];

  double get total {
    double sum = 0.0;
    for (var item in cartItems) {
      sum += item.totalPrice;
    }
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart'), centerTitle: true),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return CartWidget(
            item: item,
            Increment: () {
              setState(() {
                item.quantity++;
              });
            },
            Decrement: () {
              setState(() {
                if (item.quantity > 1) {
                  item.quantity--;
                }
              });
            },
            Remove: () {
              setState(() {
                cartItems.removeAt(index);
              });
            },
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: MainButton(
          text: 'Checkout - \$$total',
          onPressed: () {
            pushWithReplacement(context, OrderAcceptedScreen());
          },
        ),
      ),
    );
  }
}
