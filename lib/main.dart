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
        primarySwatch: Colors.yellow,
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

  // List of match schedules
  final List<String> jadwalPertandingan = [
    'Pertandingan 1 - Tanggal: 10 Oktober 2023, Pukul 18:00',
    'Pertandingan 2 - Tanggal: 12 Oktober 2023, Pukul 20:00',
    'Pertandingan 3 - Tanggal: 15 Oktober 2023, Pukul 17:30',
    'Pertandingan 4 - Tanggal: 18 Oktober 2023, Pukul 19:15',
    'Pertandingan 5 - Tanggal: 20 Oktober 2023, Pukul 21:00',
    // Add more match schedules here
  ];

  // Constructor
  _JadwalPertandinganScreenState() {
    print("Constructor called");
  }

  // Initialization of the state
  @override
  void initState() {
    super.initState();
    print("initState called");
  }

  // Called when a dependency of this State object changes
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies called");
  }

  // Called whenever the widget configuration is updated
  @override
  void didUpdateWidget(covariant JadwalPertandinganScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget called");
  }

  // Called when the stateful widget is removed from the tree
  @override
  void dispose() {
    print("dispose called");
    super.dispose();
  }

  // Build method where the UI is created
  @override
  Widget build(BuildContext context) {
    print("build called");
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
