import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Goyek",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Goyek",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Color.fromARGB(255, 60, 149, 69),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Favorites",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol edit ditekan
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white // Ubah latar belakang menjadi transparan
                          ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Color.fromARGB(255, 36, 148,
                                75), // Atur warna tepian sesuai keinginan Anda (biru)
                            width:
                                2, // Atur ketebalan tepian sesuai keinginan Anda
                          ),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(85, 45),
                      ),
                    ),
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 51, 159, 56),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 0),
                    Row(
                      children: [
                        _buildItem("GoRide", 'image/goride.jpg'),
                        _buildItem("GoCar", 'image/gocar.jpg'),
                        _buildItem("GoFood", 'image/gofood.jpg'),
                        _buildItem("GoSend", 'image/gosend.jpg'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        _buildItem("GoMart", 'image/gomart.jpg'),
                        _buildItem("GoPulsa", 'image/gopulsa.jpg'),
                        _buildItem("Check In", 'image/gocheckin.jpg'),
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

  Widget _buildItem(String itemName, String imageUrl) {
    return Container(
      margin: EdgeInsets.only(right: 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Image.network(
              imageUrl,
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Text(
              itemName,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
