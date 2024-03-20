import 'package:flutter/material.dart';

void main() {
  runApp(TwitterDesign());
}

class TwitterDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  constraints: BoxConstraints.expand(
                    height: 200,
                  ),
                  color: Colors.grey[300],
                  child: Image.network(
                    'image/upnvjatim.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24,
                          right: 20,
                          top: 70,
                        ), // Tambahkan padding atas untuk teks
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UPN Veteran Jawa Timur',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 1), // Tambahkan spasi vertikal
                            SizedBox(height: 3), // Tambahkan spasi vertikal
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 16,
                                  color: const Color.fromARGB(
                                      255, 14, 13, 13), // Warna teks abu-abu
                                ),
                                children: [
                                  TextSpan(
                                    text:
                                        '@upnvit_official\n\nAKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola\noleh Humas UPN "Veteran" Jawa Timur Kampus Bela\nNegara\n\n',
                                  ),
                                  TextSpan(
                                    text: 'Translate bio',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue, // Warna teks biru
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 20,
              top: 158,
              child: ClipOval(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey, // Warna abu
                  child: Image.network(
                    'image/logoupn.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: ClipOval(
                child: Container(
                  width: 40, // Atur lebar container
                  height: 40, // Atur tinggi container
                  color: const Color.fromARGB(255, 92, 91, 91), // Warna abu
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,
                        color: Colors.white), // Warna ikon putih
                    onPressed: () {
                      // Aksi ketika ikon panah ditekan
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Row(
                children: [
                  ClipOval(
                    child: Container(
                      width: 40, // Atur lebar container
                      height: 40, // Atur tinggi container
                      color: const Color.fromARGB(255, 92, 91, 91), // Warna abu
                      child: IconButton(
                        icon: Icon(Icons.search,
                            color: Colors.white), // Warna ikon putih
                        onPressed: () {
                          // Aksi ketika ikon pencarian ditekan
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Tambahkan spasi horizontal
                  ClipOval(
                    child: Container(
                      width: 40, // Atur lebar container
                      height: 40, // Atur tinggi container
                      color: const Color.fromARGB(255, 92, 91, 91), // Warna abu
                      child: IconButton(
                        icon: Icon(Icons.more_vert,
                            color: Colors.white), // Warna ikon putih
                        onPressed: () {
                          // Aksi ketika ikon tiga titik ditekan
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 210, // Atur posisi tombol Follow di bawah gambar besar
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol Follow ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 9, 11, 13),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 8,
                  ),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
