import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TRANSACTION'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.lightBlueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text('Belanja'),
                  subtitle: Text('14 Agustus 2024'),
                ),
                const Divider(
                  height: 2,
                  thickness: 1,
                ),
                Image.network(
                  'https://fastly.picsum.photos/id/16/2500/1667.jpg?hmac=uAkZwYc5phCRNFTrV_prJ_0rP0EdwJaZ4ctje2bY7aE',
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Tooltip(
                      message: 'Pesanan Selesai',
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Selesai'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Tooltip(
                      message: 'Lihat Belanjaan',
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Lihat'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),

      // Menambahkan button navigator
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
