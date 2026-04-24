import 'package:flutter/material.dart';

void main() {
  runApp(const CounterMod());
}

// 1. CounterMod sebagai StatelessWidget yang membungkus MaterialApp
class CounterMod extends StatelessWidget {
  const CounterMod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CounterPage(),
    );
  }
}

// 2. CounterPage sebagai StatefulWidget karena nilai counter akan berubah
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // Variabel untuk menyimpan nilai counter
  int _counter = 0;

  // Fungsi untuk menambah
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Fungsi untuk mengurangi (Tugas Tambahan)
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  // Fungsi untuk reset (Tugas Tambahan)
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter & setState()"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Counter", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            
            // Baris tombol untuk aksi counter
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Minus
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Text("- Minus"),
                ),
                const SizedBox(width: 10),
                
                // Tombol Add
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text("+ Add"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            
            // Tombol Reset
            OutlinedButton(
              onPressed: _resetCounter,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
              child: const Text("Reset Counter"),
            ),
          ],
        ),
      ),
    );
  }
}