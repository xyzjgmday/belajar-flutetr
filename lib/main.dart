import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Day',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.deepOrange,
      )),
      home: const MyHomePage(title: 'Biodata Saya'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 16),
            Text(
              'Nama: Nur Hidayat',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16),
            Text(
              'Umur: 26 Tahun',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16),
            Text(
              'Alamat: Padalarang City',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16),
            Text(
              'Pekerjaan: Mahasiswa',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
