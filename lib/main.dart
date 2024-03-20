import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teman Nurhidayat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.purple[50],
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teman Nurhidayat'),
      ),
      body: ListView(
        children: [
          ProfileCard(
            name: 'Riyan',
            nim: 'D112121062',
            imageAsset: 'assets/images/riyan.png',
            additionalInfo: 'Suhu nih bos senggol dong',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    name: 'Riyan',
                    nim: 'D112121062',
                    imageAsset: 'assets/images/riyan.png',
                    additionalInfo: 'Suhu nih bos senggol dong',
                  ),
                ),
              );
            },
          ),
          ProfileCard(
            name: 'Ikhsan Fauzan',
            nim: 'D112121055',
            imageAsset: 'assets/images/ican.png',
            additionalInfo: 'Hello, I am Ikhsan Fauzan',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    name: 'Ikhsan Fauzan',
                    nim: 'D112121063',
                    imageAsset: 'assets/images/ican.png',
                    additionalInfo: 'Halo aku dede ican',
                  ),
                ),
              );
            },
          ),
          ProfileCard(
            name: 'Sarah Fadilah',
            nim: 'D112121064',
            imageAsset: 'assets/images/sarah.jpeg',
            additionalInfo: 'Nice to meet you!',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    name: 'Sarah Fadilah',
                    nim: 'D112121064',
                    imageAsset: 'assets/images/sarah.jpeg',
                    additionalInfo: 'Nice to meet you!',
                  ),
                ),
              );
            },
          ),
          ProfileCard(
            name: 'Alma Sulaiman',
            nim: 'D112121065',
            imageAsset: 'assets/images/alma.png',
            additionalInfo: 'Hi there!',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    name: 'Alma Sulaiman',
                    nim: 'D112121065',
                    imageAsset: 'assets/images/alma.png',
                    additionalInfo: 'Hi there!',
                  ),
                ),
              );
            },
          ),
          ProfileCard(
            name: 'Encep Rahman',
            nim: 'D112121066',
            imageAsset: 'assets/images/encep.png',
            additionalInfo: 'I love coding!',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    name: 'Encep Rahman',
                    nim: 'D112121066',
                    imageAsset: 'assets/images/encep.png',
                    additionalInfo: 'I love coding!',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String nim;
  final String imageAsset;
  final String additionalInfo;
  final VoidCallback onTap;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.nim,
    required this.imageAsset,
    required this.additionalInfo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageAsset),
        ),
        title: Text(name),
        subtitle: Text(nim),
        onTap: onTap,
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String name;
  final String nim;
  final String imageAsset;
  final String additionalInfo;

  const DetailPage({
    Key? key,
    required this.name,
    required this.nim,
    required this.imageAsset,
    required this.additionalInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Teman Nurhidayat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imageAsset),
              radius: 50,
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(nim),
            SizedBox(height: 20),
            Text(additionalInfo),
          ],
        ),
      ),
    );
  }
}
