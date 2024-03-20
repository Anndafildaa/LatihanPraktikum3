import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors
                .blue, // Memberikan warna latar belakang biru pada app bar
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'For You',
                ),
                Tab(
                  text: 'Following',
                ),
              ],
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          body: TabBarView(
            children: [
              ForYouTab(),
              FollowingTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForYouTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) =>
          Divider(), // Tambahkan garis pemisah
      itemBuilder: (context, index) {
        return ListTile(
          leading: FlutterLogo(), // Icon default Flutter
          title: Text('Data ke $index'),
        );
      },
    );
  }
}

class FollowingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(70.0), // Tambahkan padding keseluruhan
      child: ListView.builder(
        itemCount: 2, // Ubah jumlah item menjadi 2 agar hanya ada dua baris
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Atur spasi antara kolom
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 160,
                        child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // Ganti dengan URL gambar Anda
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 23), // Spasi di tengah antara gambar
                    Expanded(
                      child: Container(
                        height: 160,
                        child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // Ganti dengan URL gambar Anda
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
