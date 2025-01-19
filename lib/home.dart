import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Company Details Section
              Column(
                children: [
                  Image.asset(
                    'assets/images/findcoder.png', // Add your logo image in assets
                    height: 120,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'FindCoder.io',
                    style: TextStyle(fontSize: 24, fontFamily: 'bodyfont', fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'A technology-driven platform connecting \n the best developers and coding talent.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontFamily: 'bodyfont', color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Divider(color: Colors.grey),

              // Services Section
              const Text(
                'Services',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'bodyfont'),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ServiceTile(
                    icon: Icons.emoji_events,
                    label: 'Hackathons',
                  ),
                  ServiceTile(
                    icon: Icons.person,
                    label: 'Developers',
                  ),
                  ServiceTile(
                    icon: Icons.computer,
                    label: 'Softwares',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Divider(color: Colors.grey),

              // Marketing Platforms Section
              const Text(
                'Marketing Platforms',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'bodyfont'),
              ),
              const SizedBox(height: 10),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 14,
                runSpacing: 14,
                children: [
                  MarketingIcon(icon: FontAwesomeIcons.linkedin, color: Colors.blue),
                  MarketingIcon(icon: FontAwesomeIcons.twitter, color: Colors.blue),
                  MarketingIcon(
                      icon: FontAwesomeIcons.instagram, color: Colors.pink),
                  MarketingIcon(icon: FontAwesomeIcons.github, color: Colors.black),
                  MarketingIcon(icon: FontAwesomeIcons.google, color: Colors.red),
                  MarketingIcon(icon: FontAwesomeIcons.youtube, color: Colors.red),
                  MarketingIcon(
                      icon: FontAwesomeIcons.googlePlay, color: Colors.green),
                  MarketingIcon(icon: FontAwesomeIcons.apple, color: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  final IconData icon;
  final String label;

  const ServiceTile({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue.shade100,
          child: Icon(
            icon,
            size: 30,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class MarketingIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const MarketingIcon({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 38,
      backgroundColor: color.withOpacity(0.1),
      child: Icon(
        icon,
        size: 30,
        color: color,
      ),
    );
  }
}
      