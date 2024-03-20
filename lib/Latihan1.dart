import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Card",
            style: TextStyle(
              color: Colors.white, // Memberikan warna putih pada teks
              fontWeight: FontWeight.bold, // Membuat teks menjadi tebal (bold)
            ),
          ),
          backgroundColor: Colors.blue, // Memberikan warna biru pada AppBar,
        ),
        body: MyHomePage(
          data: [
            {'nama': 'Filda Dwi Meirina', 'hobi': 'Membaca'},
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> data;

  const MyHomePage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {},
            leading: Image.network(
              'image/filda.jpg',
            ),
            trailing: const Icon(Icons.more_vert),
            title: Text(data[index]['nama'] ?? ''), // Mengambil nama dari data
            subtitle:
                Text(data[index]['hobi'] ?? ''), // Mengambil hobi dari data
            tileColor: Colors.white70,
          ),
        );
      },
    );
  }
}
