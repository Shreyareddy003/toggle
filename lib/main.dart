import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter and Image Toggle App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0; // Counter variable
  bool isImageOne = true; // Toggle variable for image

  final String imageOne = 'assets/image1.jpeg'; // Replace with your image path
  final String imageTwo = 'assets/image2.jpeg'; // Replace with your image path

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter & Image Toggle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter: $counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++; // Increment counter
                });
              },
              child: Text('Increment'),
            ),
            SizedBox(height: 40),
            Image.asset(
              isImageOne ? imageOne : imageTwo,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isImageOne = !isImageOne; // Toggle image
                });
              },
              child: Text('Toggle Image'),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 0; // Reset counter
                  isImageOne = true; // Reset image
                });
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
