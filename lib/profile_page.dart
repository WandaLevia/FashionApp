import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Saya"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.brown,
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                      "assets/image/your_profile.jpg"), // Ganti dengan gambar profil Anda
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Wanda Levia Dwi Saftiri",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Email: 210605110141@student.uin-malang.ac.id",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Tentang Saya"),
              subtitle: Text("Mahasiswa Teknik Informatika 2021"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Nomor Telepon"),
              subtitle: Text("+6285746241878"),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Alamat"),
              subtitle: Text("Bojonegoro, Jawa Timur"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan fungsi untuk mengedit profil di sini
              },
              child: Text("Edit Profil"),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}
