import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menangkap data yang dikirim melalui arguments
    final Map<String, dynamic>? data = 
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selamat Datang!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // 4. Tampilkan data username dan password di dashboard
            Text("Username: ${data?['user'] ?? 'Kosong'}", 
                 style: TextStyle(fontSize: 18)),
            Text("Password: ${data?['pass'] ?? 'Kosong'}", 
                 style: TextStyle(fontSize: 18)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman login
              },
              child: Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}