import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FindCoderApp());
}

class FindCoderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResearchScreen(),
    );
  }
}

class ResearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Trending Topics Section
              const Text(
                'Trending Topics',
                style: TextStyle(fontSize: 18, fontFamily: 'bodyfont', fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  TagWidget(tag: 'AI in Development'),
                  TagWidget(tag: 'Remote Work Tools'),
                  TagWidget(tag: 'Blockchain Apps'),
                  TagWidget(tag: 'Open Source Contribution'),
                  TagWidget(tag: 'Flutter for Startups'),
                  TagWidget(tag: 'Cloud-based Solutions'),
                  TagWidget(tag: 'Full Stack Development'),
                  TagWidget(tag: 'Cybersecurity Trends'),
                ],
              ),
              const SizedBox(height: 20),

              // Active Hours Graph Section
              const Text(
                'Active Hours on FindCoder.io',
                style: TextStyle(fontSize: 18, fontFamily: 'bodyfont', fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
                            return Text(days[value.toInt()]);
                          },
                          reservedSize: 30,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) => Text(
                            '${value.toInt()} hrs',
                            style: const TextStyle(fontSize: 12, fontFamily: 'bodyfont'),
                          ),
                          reservedSize: 40,
                        ),
                      ),
                    ),
                    lineBarsData: [
                      LineChartBarData(
                        isCurved: true,
                        spots: const [
                          FlSpot(0, 3.5), // Monday: 3.5 hours
                          FlSpot(1, 4.2), // Tuesday: 4.2 hours
                          FlSpot(2, 5.0), // Wednesday: 5 hours
                          FlSpot(3, 6.8), // Thursday: 6.8 hours
                          FlSpot(4, 7.5), // Friday: 7.5 hours
                          FlSpot(5, 4.0), // Saturday: 4 hours
                          FlSpot(6, 3.8), // Sunday: 3.8 hours
                        ],
                        color:Colors.blue,
                        barWidth: 4,
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Competition Strategies Section
              const Text(
                'Competition Strategies',
                style: TextStyle(fontSize: 18, fontFamily: 'bodyfont', fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                '- Offer unique services like AI-powered developer recommendations.',
                style: TextStyle(fontSize: 14, fontFamily: 'bodyfont'),
              ),
              const Text(
                '- Build strategic partnerships with tech communities.',
                style: TextStyle(fontSize: 14, fontFamily: 'bodyfont'),
              ),
              const Text(
                '- Create tutorials and resources to educate developers.',
                style: TextStyle(fontSize: 14, fontFamily: 'bodyfont'),
              ),
              const Text(
                '- Focus on better user experience with faster onboarding.',
                style: TextStyle(fontSize: 14, fontFamily: 'bodyfont'),
              ),
              const Text(
                '- Launch targeted campaigns on platforms like LinkedIn and GitHub.',
                style: TextStyle(fontSize: 14, fontFamily: 'bodyfont'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TagWidget extends StatelessWidget {
  final String tag;

  const TagWidget({required this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue),
      ),
      child: Text(
        tag,
        style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}
