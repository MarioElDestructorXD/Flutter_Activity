import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  child: Text("KS"),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "karelslgd",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Galantis - In My Head",
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert)
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () async =>
                    {await FirebaseAuth.instance.signOut()},
                child: const Text("Cerrar Sesión"),
              ))
        ],
      ),
    );
  }
}
