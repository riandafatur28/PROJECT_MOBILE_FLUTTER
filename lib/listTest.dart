import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Tampilan Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Tampilan Flutter'),
      ),
      body: ListView(
        children: [
          const ListTileExample(),
          const SizedBox(height: 20),
          const HorizontalListExample(),
          const SizedBox(height: 20),
          const GridExample(),
          const SizedBox(height: 20),
          const MixedListExample(),
          const SizedBox(height: 20),
          const SpacedItemsList(),
        ],
      ),
    );
  }
}

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          ListTile(leading: Icon(Icons.map), title: Text('Peta')),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
          ListTile(leading: Icon(Icons.phone), title: Text('Telepon')),
        ],
      ),
    );
  }
}

class HorizontalListExample extends StatelessWidget {
  const HorizontalListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8.0), // Menambahkan jarak kiri dan kanan
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    10), // Membuat gambar dengan sudut membulat
                child: Image.asset(
                  'assets/images.jpeg', // Ganti dengan path gambar Anda
                  width: 160,
                  fit: BoxFit.cover, // Agar gambar mengisi kontainer
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images1.jpeg',
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images2.jpeg',
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images3.jpeg',
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images4.jpeg',
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8.0), // Menambahkan jarak kiri dan kanan
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    10), // Membuat gambar dengan sudut membulat
                child: Image.asset(
                  'assets/images6.jpg', // Ganti dengan path gambar Anda
                  width: 160,
                  fit: BoxFit.cover, // Agar gambar mengisi kontainer
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images7.jpg',
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images8.jpg',
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images9.jpeg',
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images10.jpeg',
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridExample extends StatelessWidget {
  const GridExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        "image": "assets/images15.jpg",
        "text": "Jurusan Surabaya - Madiun - Solo - Yogyakarta"
      },
      {
        "image": "assets/bg.jpg",
        "text": "Jurusan Surabaya - Madiun - Solo - Purwokerto"
      },
      {
        "image": "assets/images12.jpeg",
        "text": "Jurusan Surabaya - Madiun - Solo - Wonogiri"
      },
      {
        "image": "assets/images13.jpeg",
        "text": "Jurusan Surabaya - Nganjuk - Solo - Semarang"
      },
      {
        "image": "assets/images14.jpg",
        "text": "Jurusan Surabaya - Madiun - Solo - Kuningan"
      },
      {
        "image": "assets/images11.jpg",
        "text": "Jurusan Surabaya - Madiun - Solo - Bandung"
      },
    ];

    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: List.generate(items.length, (index) {
            return Container(
              width: 100, // Mengatur lebar Card
              height: 150, // Mengatur tinggi Card
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        items[index]["image"]!,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    items[index]["text"]!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Card(
    margin: const EdgeInsets.all(12), // Memberikan jarak luar Card
    child: Padding(
      padding: const EdgeInsets.all(8.0), // Padding di dalam Card
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2, // 2 kolom
        crossAxisSpacing: 12, // Jarak horizontal antar item
        mainAxisSpacing: 12, // Jarak vertikal antar item
        children: List.generate(6, (index) {
          return Container(
            padding: const EdgeInsets.all(8), // Padding dalam item
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(12), // Membuat sudut melengkung
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        8), // Membuat sudut gambar melengkung
                    child: Image.asset(
                      'assets/bg.jpeg', // Ganti dengan nama file gambar di assets
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8), // Jarak antara gambar dan teks
                Text(
                  'Item $index',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        }),
      ),
    ),
  );
}

class MixedListExample extends StatelessWidget {
  const MixedListExample({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List<ListItem>.generate(
      10,
      (i) => i % 2 == 0
          ? HeadingItem('Heading $i')
          : MessageItem('Pengirim $i', 'Pesan $i'),
    );

    return Card(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );
        },
      ),
    );
  }
}

/// Base class for the list items
abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(heading, style: Theme.of(context).textTheme.titleLarge);
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

class MessageItem implements ListItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}

class SpacedItemsList extends StatelessWidget {
  const SpacedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = 4;

    return Card(
      child: SingleChildScrollView(
        // Membungkus semua widget dalam SingleChildScrollView
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            items,
            (index) => ItemWidget(text: 'Item $index'),
          ),
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(height: 100, child: Center(child: Text(text))),
    );
  }
}
