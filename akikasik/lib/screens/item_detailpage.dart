import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  final dynamic item; // Replace dynamic with your specific item type

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.nama), // Display the item's name
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.fields.nama,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              item.fields.deskripsi,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              "Price: ${item.fields.harga}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Add more fields as necessary
                        const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate back to the previous page
                  Navigator.pop(context);
                },
                child: const Text('Back to List'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}