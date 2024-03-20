import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Penuhi Lindungi",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Penuhi Lindungi",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
          elevation: 4, // Tingkat elevasi
          shadowColor: Colors.black, // Warna bayangan
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16, // Tambahkan padding horizontal
                ),
                decoration: BoxDecoration(
                  color: Colors
                      .blue, // Background biru untuk seluruh konten dalam padding
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Entering a Public Space",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white, // Warna teks putih
                          ),
                        ),
                        SizedBox(height: 2), // Spasi antara teks
                        Text(
                          "Stay alert to stay safe",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white, // Warna teks putih
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                        height: 65,
                        width: 65,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 500,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    Row(
                      children: [
                        _buildItem("Covid19 Vaccine"),
                        _buildItem("Covid19 Test Result"),
                        _buildItem("EHAC"),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        _buildItem("Covid19 Vaccine"),
                        _buildItem("Covid19 Test Result"),
                        _buildItem("EHAC"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(String itemName) {
    return Container(
      margin: EdgeInsets.only(right: 30), // Mengurangi jarak margin
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 85, bottom: 8), // Mengurangi jarak padding kiri dan bawah
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              height: 60,
              width: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 83), // Mengurangi jarak padding kiri
            child: Text(
              itemName,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
