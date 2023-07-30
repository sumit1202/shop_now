import 'package:flutter/material.dart';
import 'package:shop_now/global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart Details'),
        ),
        body: ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context, index) {
              final cartItem = cart[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(cartItem['imageUrl'] as String),
                  radius: 30,
                ),
                title: Text(
                  cartItem['title'].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('Size: ${cartItem['size']}'),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.clear_outlined,
                      color: Colors.red,
                    )),
              );
            }));
  }
}
