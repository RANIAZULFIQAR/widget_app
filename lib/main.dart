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
      home: const MyHomePage(title: ''),
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
  int _counter = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 1),
            Image.asset(
              'assets/s.jpg',
              height: 200,
              fit: BoxFit.cover,
              scale: 2.5,
              opacity: const AlwaysStoppedAnimation<double>(0.5),
            ),
            const SizedBox(height: 20),
            const Text(''),

            const Spacer(), // This takes up the remaining space

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    Icon(Icons.home, size: 40),
                    const Text('HOME'),
                  ],
                ),
                const SizedBox(width: 20), // Space between icons
                Column(
                  children: [
                    Icon(Icons.favorite, size: 40),
                    const Text('Favourites'),
                  ],
                ),
                const SizedBox(width: 20), // Space between icons
                Column(
                  children: [
                    Icon(Icons.settings, size: 40),
                    const Text('Setting'),
                  ],
                ),
              ],
            ),
            const Spacer(),

            // Adding the "Click Me" button
            ElevatedButton(
              onPressed: null, // No functionality
              child: const Text(
                'Click Me',
                style: TextStyle(
                  fontSize: 20, // Increase font size for better clarity
                  fontWeight: FontWeight.bold, // Make the text bold
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
