import 'dart:html';

import 'package:flutter/material.dart';
import 'package:shoppingcart_sekolah_beta/product.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> items = <Product>[
      Product(
          id: '1', name: 'Item 1', price: 10000, image: 'assets/shoes1.png'),
      Product(
          id: '2', name: 'Item 2', price: 20000, image: 'assets/shoes2.png'),
      Product(
          id: '3', name: 'Item 3', price: 30000, image: 'assets/shoes3.png'),
      Product(
          id: '4', name: 'Item 4', price: 40000, image: 'assets/shoes2.png'),
      Product(
          id: '5', name: 'Item 5', price: 50000, image: 'assets/shoes1.png'),
      Product(
          id: '6', name: 'Item 6', price: 60000, image: 'assets/shoes2.png'),
      Product(
          id: '7', name: 'Item 7', price: 70000, image: 'assets/shoes3.png'),
      Product(
          id: '8', name: 'Item 8', price: 80000, image: 'assets/shoes1.png'),
      Product(
          id: '9', name: 'Item 9', price: 90000, image: 'assets/shoes2.png'),
      Product(
          id: '10', name: 'Item 10', price: 100000, image: 'assets/shoes3.png'),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // untuk tombol kembali
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Back',
          onPressed: () {},
        ),
        title: const Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(items[index].name),
                  leading: Image.asset(
                    items[index].image,
                    height: 56.0,
                    width: 56.0,
                    fit: BoxFit.cover,
                  ),
                  subtitle: Text(
                    'Rp. ${items[index].price}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const ShoppingCartItemQty(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ShoppingCartItemQty extends StatefulWidget {
  const ShoppingCartItemQty({super.key});

  @override
  State<ShoppingCartItemQty> createState() => _ShoppingCartItemQtyState();
}

class _ShoppingCartItemQtyState extends State<ShoppingCartItemQty> {
  int _qty = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(icon: const Icon(Icons.delete), onPressed: () {}),
        IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                if (_qty > 1) {
                  _qty--;
                }
              });
            }),
        Text('$_qty'),
        IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                _qty++;
              });
            }),
      ],
    );
  }
}
