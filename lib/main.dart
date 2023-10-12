import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jadwal Pertandingan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JadwalPertandinganScreen(),
    );
  }
}

class JadwalPertandinganScreen extends StatefulWidget {
  @override
  _JadwalPertandinganScreenState createState() => _JadwalPertandinganScreenState();
}

class _JadwalPertandinganScreenState extends State<JadwalPertandinganScreen> {
  final List<String> jadwalPertandingan = [
    'Pertandingan 1 - Tanggal: 10 Oktober 2023, Pukul 18:00',
    'Pertandingan 2 - Tanggal: 12 Oktober 2023, Pukul 20:00',
    'Pertandingan 3 - Tanggal: 15 Oktober 2023, Pukul 17:30',
    'Pertandingan 4 - Tanggal: 18 Oktober 2023, Pukul 19:15',
    'Pertandingan 5 - Tanggal: 20 Oktober 2023, Pukul 21:00',
    // Tambahkan lebih banyak jadwal pertandingan di sini
  ];

  _JadwalPertandinganScreenState() {
    print("Constructor dipanggil");
  }

  @override
  void initState() {
    super.initState();
    print("initState dipanggil");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies dipanggil");
  }

  @override
  void didUpdateWidget(covariant JadwalPertandinganScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget dipanggil");
  }

  @override
  void dispose() {
    print("dispose dipanggil");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build dipanggil");
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal Pertandingan'),
      ),
      body: ListView.builder(
        itemCount: jadwalPertandingan.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jadwalPertandingan[index]),
          );
        },
      ),
    );
  }
}
