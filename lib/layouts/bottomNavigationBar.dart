import 'package:flutter/material.dart';
import 'package:flutter_basic/layouts/pages.dart';
import 'home_page.dart';
import 'whislist_page.dart';

class MyBottomnavigationBar extends StatefulWidget {
  const MyBottomnavigationBar({super.key});

  @override
  State<MyBottomnavigationBar> createState() => _MyBottomnavigationbarState();
}

class _MyBottomnavigationbarState extends State<MyBottomnavigationBar> {
  int _selectedIndex = 0;

  void _onIntemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// List widget untuk setiap tab
static List<Widget> _widgetOption = <Widget>[
  SampleStack(),
  SampleListViewBuilder(),
  SamplePages(),
  
  // Menampilkan Profile Page
  Scaffold(
    appBar: AppBar(
      title: Text('PROFILE'),
    ),
    body: ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50, 
                backgroundImage: NetworkImage(
                  'https://picsum.photos/seed/picsum/200/300',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Nama Pengguna',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Deskripsi atau status singkat', 
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home_work),
          title: const Text('Daftar Alamat'),
          subtitle: const Text('Atur Alamat Pengiriman Belanjaan'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: const Icon(Icons.wallet),
          title: const Text('Pembayaran'),
          subtitle: const Text('E-wallet, kartu kredit, & debit instan'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: const Icon(Icons.lock),
          title: const Text('Keamanan Akun'),
          subtitle: const Text('Kata sandi, PIN, & verifikasi'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: const Icon(Icons.notifications),
          title: const Text('Notifikasi'),
          subtitle: const Text('Atur segala jenis pesan notifikasi'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: const Icon(Icons.language),
          title: const Text('Privasi Akun'),
          subtitle: const Text('Atur penggunaan data'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Keluar Akun'),
          subtitle: const Text('Atur penggunaan data'),
        ),
      ],
    ),
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onIntemTapped,
      ),
    );
  }
}