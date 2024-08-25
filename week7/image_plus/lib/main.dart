import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _imageCount = 1;
  final int _maxImages = 5; // กำหนดจำนวนสูงสุดของภาพที่ต้องการแสดง

  void _incrementImages() {
    setState(() {
      if (_imageCount < _maxImages) {
        _imageCount++;
      } else {
        _imageCount = 1; // รีเซ็ตจำนวนภาพกลับไปเป็น 1 เมื่อถึงจำนวนสูงสุด
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                SizedBox(width: 40),
                const Text('Strength: '),
                Text('$_imageCount'),
                for (int i = 0; i < _imageCount; i++)
                  Image.asset(
                    'assets/img5.jpg',
                    width: 50,
                  ),
                const Expanded(child: SizedBox()),
                TextButton(
                  onPressed: _incrementImages,
                  child: const Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
