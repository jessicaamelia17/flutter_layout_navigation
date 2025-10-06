import 'package:flutter/material.dart';
import 'package:navigasi_belanja_flutter/models/item.dart';
import 'package:navigasi_belanja_flutter/widgets/product_card.dart';
import 'package:navigasi_belanja_flutter/widgets/title_section.dart';
import 'package:navigasi_belanja_flutter/widgets/footer_section.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      images: 'assets/images/gula.png',
      stock: 10,
      rating: 4.5,
      description:
      'Gula pasir premium dengan butiran halus, cocok untuk masakan dan minuman sehari-hari.',
    ),
    Item(
      name: 'Salt',
      price: 2000,
      images: 'assets/images/garam.png',
      stock: 20,
      rating: 4.0,
      description:
      'Garam beryodium untuk kebutuhan dapur, menambah cita rasa makanan lebih nikmat.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: const Text('Aplikasi Belanja'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Bagian Judul
          const TitleSection(),

          // Bagian Grid Produk
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ProductCard(item: item);
                },
              ),
            ),
          ),

          // Footer tetap di bawah, tidak menutupi grid
          const FooterSection(name: 'Jessica Amelia', nim: '2341760185'),
        ],
      ),
    );
  }
}
