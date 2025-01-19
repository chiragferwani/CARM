import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(FindCoderApp());
}

class FindCoderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ManagementScreen(),
    );
  }
}

class ManagementScreen extends StatelessWidget {
  // Dummy user data for platforms
  final List<Map<String, dynamic>> platforms = [
    {'name': 'YouTube', 'users': 12000, 'icon': FontAwesomeIcons.youtube, 'color': Colors.red},
    {'name': 'Web', 'users': 25000, 'icon': Icons.language, 'color': Colors.blue},
    {'name': 'Mobile App', 'users': 18000, 'icon': Icons.phone_android, 'color': Colors.green},
    {'name': 'Google', 'users': 15000, 'icon': FontAwesomeIcons.google, 'color': Colors.orange},
    {'name': 'GitHub', 'users': 8000, 'icon': FontAwesomeIcons.github, 'color': Colors.black},
    {'name': 'LinkedIn', 'users': 19000, 'icon': FontAwesomeIcons.linkedin, 'color': Colors.blue},
    {'name': 'Instagram', 'users': 20000, 'icon': FontAwesomeIcons.instagram, 'color': Colors.purple},
    {'name': 'X (Twitter)', 'users': 17000, 'icon': FontAwesomeIcons.twitter, 'color': Colors.lightBlue},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('User Management'),
      //   backgroundColor: Colors.blue,
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of tiles per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: platforms.length,
          itemBuilder: (context, index) {
            final platform = platforms[index];
            return ManagementTile(
              platformName: platform['name'],
              userCount: platform['users'],
              icon: platform['icon'],
              color: platform['color'],
            );
          },
        ),
      ),
    );
  }
}

class ManagementTile extends StatelessWidget {
  final String platformName;
  final int userCount;
  final IconData icon;
  final Color color;

  const ManagementTile({
    required this.platformName,
    required this.userCount,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon
            CircleAvatar(
              backgroundColor: color.withOpacity(0.1),
              radius: 25,
              child: Icon(icon, color: color, size: 30),
            ),
            const SizedBox(height: 10),
            // Platform Name
            Text(
              platformName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'bodyfont'
              ),
            ),
            const SizedBox(height: 5),
            // User Count with People Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.people, size: 16, color: Colors.grey),
                const SizedBox(width: 5),
                Text(
                  '$userCount users',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontFamily: 'bodyfont'
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
