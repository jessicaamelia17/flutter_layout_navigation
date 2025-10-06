import 'package:flutter/material.dart';
import 'package:navigasi_belanja_flutter/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      images: 'assets/images/gula.png',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      images: 'assets/images/garam.png',
      stock: 20,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      backgroundColor: Colors.purple[50],
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 900),
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
          child: GridView.builder(
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width > 900 ? 4 : 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
            ),
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Expanded(
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Image.asset(
                                item.images,
                                fit: BoxFit.contain,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        Text(
                          item.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Rp${item.price}',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Stok: ${item.stock}',
                          style: TextStyle(
                            color: Colors.green[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(width: 4),
                            Text(
                              item.rating.toString(),
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
