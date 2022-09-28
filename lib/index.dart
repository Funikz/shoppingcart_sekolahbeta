import 'dart:html';

import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = <String>[
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
      'Item 6',
      'Item 7',
      'Item 8',
      'Item 9',
      'Item 10'
    ];

    final List<int> prices = [
      10000,
      20000,
      30000,
      40000,
      50000,
      60000,
      70000,
      80000,
      90000,
      100000
    ];

    final List<String> pictures = [
      'assets/shoes1.png',
      'assets/shoes2.png',
      'assets/shoes3.png',
      'assets/shoes1.png',
      'assets/shoes2.png',
      'assets/shoes3.png',
      'assets/shoes1.png',
      'assets/shoes2.png',
      'assets/shoes3.png',
      'assets/shoes3.png',
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
            child: ListTile(
              title: Text(items[index]),
              leading: Image.asset(
                pictures[index],
                height: 56.0,
                width: 56.0,
                fit: BoxFit.cover,
              ),
              subtitle: Text(
                'Rp. ${prices[index]}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
