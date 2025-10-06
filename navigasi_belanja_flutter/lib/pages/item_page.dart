import 'package:flutter/material.dart';
import 'package:navigasi_belanja_flutter/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    final maxContentWidth =
        500.0; // batas lebar konten agar tidak terlalu melebar

    return Scaffold(
      appBar: AppBar(title: Text('Item Page')),
      body: Center(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxContentWidth),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Center(
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Hero(
                            tag: itemArgs
                                .name, // harus sama persis dengan yang di HomePage
                            child: Image.asset(
                              itemArgs.images,
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 24),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            itemArgs.name,
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.amber[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              SizedBox(width: 4),
                              Text(
                                itemArgs.rating.toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Card(
                      color: Colors.red[50],
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Icon(Icons.price_check, color: Colors.redAccent),
                            SizedBox(width: 10),
                            Text(
                              'Harga: ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.redAccent,
                              ),
                            ),
                            Text(
                              'Rp${itemArgs.price}',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Card(
                      color: Colors.green[50],
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Icon(Icons.inventory_2, color: Colors.green),
                            SizedBox(width: 10),
                            Text(
                              'Stok tersedia: ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.green[900],
                              ),
                            ),
                            Text(
                              '${itemArgs.stock}',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // aksi add to cart
                            },
                            icon: Icon(Icons.add_shopping_cart),
                            label: Text('Add to Cart'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 18),
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // aksi checkout
                            },
                            icon: Icon(Icons.payment),
                            label: Text('Checkout'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 18),
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.purple[50],
    );
  }
}
