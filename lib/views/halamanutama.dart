import 'package:meet_13/models/usermodel.dart';
import 'package:meet_13/viewmodels/userviewmodel.dart';
import 'package:flutter/material.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  List<UserModel> dataUser = [];

  void getDataUser() {
    UserViewModel().getUsers().then((value) {
      setState(() {
        if (value != null) {
          dataUser = value;
        }
      });
    });
  }

  Widget personDetailCard(UserModel data) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        color: Colors.teal[800],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                child: Text(
                  data.name[0],
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      data.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      data.username,
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    Text(
                      data.email,
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getDataUser();
  }

  void showDetailDialog(UserModel data) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.teal[800],
          title: const Text('Detail Person',
              style: TextStyle(color: Colors.white)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name : ${data.name}",
                  style: const TextStyle(color: Colors.white)),
              Text("Email : ${data.email}",
                  style: const TextStyle(color: Colors.white)),
              Text("Username : ${data.username}",
                  style: const TextStyle(color: Colors.white)),
              Text("Website : ${data.website}",
                  style: const TextStyle(color: Colors.white)),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Utama"),
        backgroundColor: Colors.teal[900],
      ),
      body: Center(
        child: dataUser.isEmpty
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () => showDetailDialog(dataUser[i]),
                    child: personDetailCard(dataUser[i]),
                  );
                },
                itemCount: dataUser.length,
              ),
      ),
    );
  }
}
