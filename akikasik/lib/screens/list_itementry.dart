import 'package:akikasik/screens/item_detailpage.dart';
import 'package:flutter/material.dart';
import 'package:akikasik/models/item_entry.dart';
import 'package:akikasik/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemEntryPage extends StatefulWidget {
  const ItemEntryPage({super.key});

  @override
  State<ItemEntryPage> createState() => _ItemEntryPageState();
}

class _ItemEntryPageState extends State<ItemEntryPage> {
  Future<List<ItemEntry>> fetchItem(CookieRequest request) async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    final response = await request.get('http://127.0.0.1:8000/json/');
    
    // Melakukan decode response menjadi bentuk json
    var data = response;
    
    // Melakukan konversi data json menjadi object ItemEntry
    List<ItemEntry> listItem = [];
    for (var d in data) {
      if (d != null) {
        listItem.add(ItemEntry.fromJson(d));
      }
    }
    return listItem;
  }

  @override
Widget build(BuildContext context) {
  final request = context.watch<CookieRequest>();
  return Scaffold(
    appBar: AppBar(
      title: const Text('Item Entry List'),
    ),
    drawer: const LeftDrawer(),
    body: FutureBuilder(
      future: fetchItem(request),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else {
          if (!snapshot.hasData || snapshot.data.isEmpty) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum ada data Batu pada AkikAsik Shop.',
                  style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                ),
                SizedBox(height: 8),
              ],
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: List.generate(snapshot.data!.length, (index) {
                  // Get the item
                  final item = snapshot.data![index];
                  return GestureDetector(
                    onTap: () {
                      // Show a dialog when the item is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDetailPage(item: item),
                        ),
                      );
                    },
                    child: Container(
                      width: 300, // Fixed width
                      height: 150, // Fixed height
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${item.fields.nama}",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text("${item.fields.deskripsi}"),
                          const SizedBox(height: 10),
                          Text("${item.fields.harga}"),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            );
          }
        }
      },
    ),
  );
}
}