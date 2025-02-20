import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'PT. Selamat Sugeng Rahayu';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const SingleChildScrollView(
          // Scrollable body
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSection(image: 'assets/bg.jpeg'), // Pastikan path ini benar
              TitleSection(
                slogan: 'Senantiasa Melayani Setulus Hati',
                location:
                    'Jl. Raya Surabaya - Madiun, Km. 25, Krian, Sidoarjo, Jawa Timur',
              ),
              ButtonSection(),
              ParagraphSection(), // Menambahkan paragraf di bawah tombol
            ],
          ),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  final String image;
  const ImageSection({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Image.asset(
      image,
      width: screenWidth,
      height: screenWidth * 0.6,
      fit: BoxFit.cover,
    );
  }
}

class TitleSection extends StatelessWidget {
  final String slogan;
  final String location;

  const TitleSection({super.key, required this.slogan, required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  slogan,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red, size: 24),
          const SizedBox(width: 4),
          const Text('41', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;

  const ButtonWithText(
      {super.key,
      required this.color,
      required this.icon,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
            size: 32,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

class ParagraphSection extends StatelessWidget {
  const ParagraphSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        '''Sumber Kencono

Sumber Kencono pertama kali dibentuk pada 1981 oleh seorang pengusaha transportasi bernama Setyaki Sasongko. Sasongko menjalankan perusahaan ini dengan bermodalkan 6 unit bus dengan trayek Surabaya–Yogyakarta serta beroperasi pada kelas ekonomi. Tercatat Sumber Kencono memiliki kompetitor yang cukup sengit, seperti PO Flores, terutama dari jumlah armadanya. Namun peristiwa tabrakan PO Flores dengan kereta api pada 6 Mei 1981 menjadi titik balik bagi Sumber Kencono. PO Flores terkena sanksi dilarang menjalankan angkutan antarkota antarprovinsi (AKAP) di wilayah Solo, sehingga Sumber Kencono mengambil alih okupansi trayek tersebut.
Selama dekade 1980-an, bus ini makin diminati karena bus tersebut tersedia 20 menit sekali, di samping ketersediaan armadanya yang sangat cukup. Suharno menyatakan bahwa secara harfiah, Sumber Kencono berarti "sumber emas", maksudnya Sasongko menjadikan perusahaan otobusnya sebagai mesin uang. Dengan pangsa pasarnya yang cukup besar serta selalu melaju kencang menjadikan bus ini dijuluki sebagai "raja jalanan" di Tanah Jawa.
Bus-bus Sumber Kencono beroperasi sebagai kelas ekonomi non-AC serta AC tarif murah, yang biasa dikenal dengan sebutan "AC tarif biasa". Hingga tahun 2011, Sumber Kencono memiliki 255 armada, dengan perincian 230 reguler dan 22 cadangan. Namun sayangnya, kelajuan bus yang cukup tinggi tersebut tidak diimbangi dengan kepatuhan berkendara para pengemudi, seperti ugal-ugalan atau melanggar batas kecepatan, sehingga sering mengalami kecelakaan.
Antara tahun 2009 hingga 2011, terjadi 51 kecelakaan dengan total 129 korban dan 36 meninggal dunia. Terakhir, bus Sumber Kencono mengalami kecelakaan pada 12 September 2011. Sebagai tanggapan atas peristiwa tersebut, Soekarwo selaku Gubernur Jawa Timur melayangkan rekomendasi kepada Dinas Perhubungan untuk mencabut izin trayek sekaligus izin perusahaan Sumber Kencono; serta memeriksa SIM dari masing-masing pengemudi. Sanksi administratif akhirnya dijatuhkan oleh Kementerian Perhubungan kepada perusahaan otobus tersebut: Sumber Kencono dipangkas jumlah armadanya yang beroperasi hingga 40%.

Regenerasi

Bus Ekonomi Sumber Selamat tujuan Surabaya–Yogyakarta
Dengan pengakuan Sasongko atas kesalahan manajemen, seperti waktu istirahat pengemudi serta kecakapan pengemudi, ia memutuskan merombak seluruh manajemen perusahaan dan meregenerasi perusahaan tersebut. Pada 14 Juli 2011, dua bulan sebelum kecelakaan bus Sumber Kencono yang terakhir, 80 armada bus Sumber Kencono diganti namanya menjadi Sumber Selamat, yang diharapkan dapat memberi nasib baik, sekaligus mengajarkan pentingnya keselamatan dalam perjalanan bus. Pada 9 Februari 2012, Direktorat Jenderal Perhubungan Darat memutuskan tidak akan mencabut izin trayek Sumber Kencono, karena Hubdat menilai Sumber Kencono telah dikelola secara profesional.
Setelah regenerasi, Sasongko mulai tegas dalam masalah keselamatan dan mengancam akan menjatuhkan teguran tertulis tingkat tiga kepada setiap pengemudi yang masih berlaku ugal-ugalan. Untuk memantau perilaku mereka, bus-bus Sumber Selamat dipasangi GPS yang diintegrasikan dengan pemantau kecepatan bus.
Sebagai pendamping Sumber Selamat, pada 2013, diluncurkan bus dengan nama Sugeng Rahayu. Sugeng Rahayu, yang bermakna "sejahtera", atau "jauh dari musibah", tampil dengan skema warna yang berbeda yakni merah dan kuning. Merek dagang tersebut akhirnya dipegang oleh perusahaan tunggal dengan nama legal PT Selamat Sugeng Rahayu.
Di awal operasinya, Sugeng Rahayu juga tak luput dari insiden. Pada 27 Desember 2013, bus Sugeng Rahayu menabrak sepeda motor di Jalan Raya Perak, Jombang, yang berimbas pembakaran bus tersebut. Catatan Kepala Dinas Perhubungan dan LLAJ Jawa Timur, menunjukkan bahwa bus tersebut hanya melaju pada kecepatan 32 km/jam.
Pada tahun 2014, Sugeng Rahayu memulai perjalanan patas pertamanya di rute Surabaya-Yogyakarta. Hadirnya kelas cepat ini bertujuan untuk memberikan kenyamanan ekstra bagi para penumpang, terlihat dari fasilitas yang ditawarkan lebih unggul daripada kelas AC tarif biasa. Kelas cepat Sugeng Rahayu sudah dilengkapi dengan perangkat hiburan, koneksi Wi-Fi, serta peralatan AC yang lebih baik. Pada tahun 2017, Sugeng Rahayu hadir dalam bus berwarna hitam dengan corak yang lebih elegan dan mewah.''',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
