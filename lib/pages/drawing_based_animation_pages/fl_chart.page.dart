// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Pages
//// Fl Chart Pages
import './fl_chart_pages/line_chart.page.dart';
import './fl_chart_pages/bar_chart.page.dart';
import './fl_chart_pages/pie_chart.page.dart';
import './fl_chart_pages/scatter_chart.page.dart';
import './fl_chart_pages/rader_chart.page.dart';

// FlChartPage: StatelessWidget Class
class FlChartPage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Fl Chart Page";
  static String routeName = "/fl-chart";

  @override
  _FlChartPageState createState() => _FlChartPageState();
}

class _FlChartPageState extends State<FlChartPage> {
  final List<Widget> pageList = [
    LineChartPage(),
    BarChartPage(),
    PieChartPage(),
    ScatterChartPage(),
    RaderChartPage(),
  ];

  final List<Map<String, dynamic>> bnbItemObjectList = [
    {
      "label": "Line Chart",
      "icon": Icon(Icons.stacked_line_chart),
    },
    {
      "label": "Bar Chart",
      "icon": Icon(Icons.bar_chart),
    },
    {
      "label": "Pie Chart",
      "icon": Icon(Icons.pie_chart),
    },
    {
      "label": "Scatter Chart",
      "icon": Icon(Icons.scatter_plot),
    },
    {
      "label": "Rader Chart",
      "icon": Icon(Icons.radar),
    },
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 30.0,
        currentIndex: this._currentIndex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          ...this
              .bnbItemObjectList
              .map(
                (item) => BottomNavigationBarItem(
                  label: item['label'],
                  icon: item['icon'],
                ),
              )
              .toList(),
        ],
      ),
      body: this.pageList[this._currentIndex],
    );
  }
}
