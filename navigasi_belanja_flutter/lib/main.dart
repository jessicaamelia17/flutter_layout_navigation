import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigasi_belanja_flutter/pages/item_page.dart';
import 'package:navigasi_belanja_flutter/pages/home_page.dart';
import 'package:navigasi_belanja_flutter/models/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // definisikan router
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomePage()),
      GoRoute(
        path: '/item',
        builder: (context, state) {
          // ambil data yang dilempar saat navigate
          final item = state.extra as Item;
          return ItemPage(item: item);
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
