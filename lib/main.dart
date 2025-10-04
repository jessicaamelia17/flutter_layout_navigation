import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Bagian titleSection ---
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // soal 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // soal 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          // soal 3
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );

    // --- Bagian buttonSection (Langkah 2) ---
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Banyak merupakan salah satu destinasi wisata alam paling terkenal di Kota Batu, '
        'Malang, Jawa Timur. Terletak di ketinggian sekitar 1.300 meter di atas permukaan laut, '
        'gunung ini menjadi tempat favorit bagi wisatawan yang ingin menikmati panorama alam '
        'Kota Batu dari ketinggian. Daya tarik utama Gunung Banyak adalah aktivitas paralayang, '
        'di mana pengunjung dapat merasakan sensasi terbang di udara sambil melihat keindahan '
        'hamparan pegunungan dan lampu kota di malam hari.\n\n'
        'Selain paralayang, area sekitar Gunung Banyak juga memiliki berbagai spot wisata menarik '
        'seperti Omah Kayu, sebuah penginapan unik berupa rumah-rumah kayu yang menempel di pohon, '
        'serta Taman Langit, tempat wisata dengan berbagai spot foto artistik dan patung-patung indah '
        'yang instagramable. Udara yang sejuk dan suasana alam yang asri menjadikan tempat ini cocok '
        'untuk bersantai, berfoto, ataupun sekadar menikmati waktu bersama keluarga dan teman-teman.\n\n'
        'Bagi pecinta alam dan fotografi, Gunung Banyak juga menjadi lokasi ideal untuk berburu sunrise '
        'dan sunset yang menawan. Dari puncak, pengunjung dapat melihat pemandangan spektakuler perbukitan '
        'dan lembah di sekitar Batu dan Malang.\n\n'
        'Oleh: Jessica Amelia (2341760185)',
        softWrap: true,
      ),
    );

    // --- Return MaterialApp ---
    return MaterialApp(
      title: 'Flutter layout: Jessica Amelia dan 2341760185',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Image.asset(
              'images/gunung_banyak.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // tampilkan bagian judul
            buttonSection, // tampilkan bagian tombol
            textSection, // tampilkan bagian teks
          ],
        ),
      ),
    );
  }

  // Fungsi pembuat kolom tombol (Langkah 1)
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
