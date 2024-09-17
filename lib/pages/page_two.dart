import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    // Data list yang akan ditampilkan dalam GridView Histrori Transaksi
    final items = List<String>.generate(10, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('History Transaction'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom
          mainAxisSpacing: 3, // Spasi utama antara item
          crossAxisSpacing: 3, // Spasi silang antara item
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            color: index % 2 == 0 ? Colors.teal[300] : Colors.teal[100],
            child: Center(
              child: Text(
                items[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
