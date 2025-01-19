import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          },
          child: Text('Go to Settings'),
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);  // Navigates back to the home screen
          },
        ),
         title: const Text('CARM', 
          style: TextStyle(
            fontFamily: 'byeno', 
            fontSize: 24,
            color: Colors.white),),
          backgroundColor: Colors.blue,
          centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo (You can add your logo image here)
            Center(
              child: Image.asset(
                'assets/images/logo.png', // Make sure to add a logo image in your assets folder
                height: 150, // Increased size of the logo
              ),
            ),
            SizedBox(height: 20),

            // Project Name
            Center(
              child: Text(
                'CARM',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'bodyfont',
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),

            // Punchline
            Center(
              child: Positioned(
                bottom: mq.height * .30,
                width: mq.width,
                child: Text('Company Analysis', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'bodyfont',
                  fontSize: 25
                  ),
                )
                ),
            ),
              Center(
                child: Positioned(
                bottom: mq.height * .26,
                width: mq.width,
                child: Text('Research Management', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'bodyfont',
                  fontSize: 25
                  ),
                )
                ),
              ),
            SizedBox(height: 20),

            // Short Abstract
            Center(
              child: Text(
                'CARM is a comprehensive platform designed to help businesses analyze and manage customer reviews effectively. It provides insights to improve customer satisfaction and drive business growth.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
