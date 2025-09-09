import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar
          (title: Text('Row and Column')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakFavorit(label: 'Biru', color: Colors.blue),
                  SizedBox(width: 17),
                  KotakFavorit(label: 'Hijau', color: Colors.green),
                ],
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakFavorit(label: 'Merah', color: Colors.red.shade300),
                  SizedBox(width: 17),
                  KotakFavorit(label: 'Kuning', color: Colors.yellow),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakFavorit extends StatelessWidget {
  final String label;
  final Color color;

  KotakFavorit({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Icon(Icons.favorite, color: Colors.red, size: 40),
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}