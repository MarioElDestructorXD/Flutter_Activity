import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white,
                    child: Text('MRG'),
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mario Rodriguez Gonzalez", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),), 
                      Text("Hace 5 minutos",  style: TextStyle(fontSize: 12, color: Colors.black54),)
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            Image.asset(
              'assets/logo.png',
              width: double.infinity,
              height: 400,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.message),
                  Icon(Icons.ios_share_outlined),
                  Spacer(),
                  Icon(Icons.save_alt),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("text"),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("text"),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("text"),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
