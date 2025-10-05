import 'package:flutter/material.dart';
import 'package:navigasi_belanja_flutter/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text('Item Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nama: ${itemArgs.name}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Harga: ${itemArgs.price}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
