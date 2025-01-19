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
      home: AnalyticsScreen(),
    );
  }
}

class AnalyticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('FindCoder.io Analytics'),
      //   backgroundColor: Colors.blue,
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Bar Graph for Weekly Engagement
              const Text(
                'Engagement Analysis (Weekly Views)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'bodyfont'),
              ),
              const SizedBox(height: 10),
              SizedBox(
  height: 200,
  child: BarChart(
    BarChartData(
      borderData: FlBorderData(show: false),
      titlesData: FlTitlesData(
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) => Text(
              '${value.toInt()}',
              style: const TextStyle(fontSize: 12),
            ),
            reservedSize: 30,
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
              return Text(
                days[value.toInt()],
                style: const TextStyle(fontSize: 12, fontFamily: 'bodyfont'),
              );
            },
            reservedSize: 30,
          ),
        ),
      ),
      barGroups: [
        BarChartGroupData(
          x: 0,
          barRods: [BarChartRodData(fromY: 0, toY: 3000, color: Colors.blue)],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [BarChartRodData(fromY: 0, toY: 3200, color: Colors.blue)],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [BarChartRodData(fromY: 0, toY: 2900, color: Colors.blue)],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [BarChartRodData(fromY: 0, toY: 3600, color: Colors.blue)],
        ),
        BarChartGroupData(
          x: 4,
          barRods: [BarChartRodData(fromY: 0, toY: 4100, color: Colors.blue)],
        ),
        BarChartGroupData(
          x: 5,
          barRods: [BarChartRodData(fromY: 0, toY: 4500, color: Colors.blue)],
        ),
        BarChartGroupData(
          x: 6,
          barRods: [BarChartRodData(fromY: 0, toY: 4700, color: Colors.blue)],
        ),
      ],
    ),
  ),
),

              const SizedBox(height: 20),

              // Pie Chart for Engagement Distribution
              const Text(
                'Engagement Distribution (Platforms)',
                style: TextStyle(fontSize: 18, fontFamily: 'bodyfont', fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        value: 45,
                        title: 'Web (45%)',
                        color: Colors.blue,
                        radius: 50,
                      ),
                      PieChartSectionData(
                        value: 35,
                        title: 'Mobile (35%)',
                        color: Colors.green,
                        radius: 50,
                      ),
                      PieChartSectionData(
                        value: 15,
                        title: 'API (15%)',
                        color: Colors.orange,
                        radius: 50,
                      ),
                      PieChartSectionData(
                        value: 5,
                        title: 'Other (5%)',
                        color: Colors.red,
                        radius: 50,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Line Graph for Monthly User Growth
              const Text(
                'User Growth Over Time (Monthly)',
                style: TextStyle(fontSize: 18, fontFamily: 'bodyfont', fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) => Text(
                            '${value.toInt()}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          reservedSize: 30,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];
                            return Text(
                              months[value.toInt()],
                              style: const TextStyle(fontSize: 12),
                            );
                          },
                          reservedSize: 30,
                        ),
                      ),
                    ),
                    lineBarsData: [
                      LineChartBarData(
                        isCurved: true,
                        spots: const [
                          FlSpot(0, 5000),
                          FlSpot(1, 7000),
                          FlSpot(2, 10000),
                          FlSpot(3, 15000),
                          FlSpot(4, 20000),
                          FlSpot(5, 27000),
                        ],
                        color: Colors.blue,
                        barWidth: 4,
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
