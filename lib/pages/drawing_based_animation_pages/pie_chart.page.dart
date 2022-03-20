// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:pie_chart/pie_chart.dart';

// PieChartPage: StatefulWidget Class
class PieChartPage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Pie Chart Page";
  static String routeName = "/pie-chart";

  @override
  _PieChartPageState createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
  // Final: Class Properties
  final Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  // Normal: Class Properties
  bool switchValue = true;
  bool switchChartType = false;
  bool switchCenterText = false;
  bool switchPercentage = false;
  bool isShowChartValue = true;

  // Actions: Class Methods
  void switchValueChange(bool changedValue) {
    setState(() {
      this.switchValue = changedValue;
    });
  }

  void switchChartTypeValueChange(bool changedValue) {
    setState(() {
      this.switchChartType = changedValue;
    });
  }

  void switchCenterTextValueChange(bool changedValue) {
    setState(() {
      this.switchCenterText = changedValue;
    });
  }

  void switchPercentageValueChange(bool changedValue) {
    setState(() {
      this.switchPercentage = changedValue;
    });
  }

  void switchShowChartValueChange(bool changedValue) {
    setState(() {
      this.isShowChartValue = changedValue;
    });
  }

  // Widgets: Class Methods
  Widget changedWidget() {
    final pieChartWidget = PieChart(
      dataMap: dataMap,
      animationDuration: Duration(seconds: 5),
      initialAngleInDegree: 0,
      chartType: this.switchChartType ? ChartType.ring : ChartType.disc,
      centerText: this.switchCenterText ? "Hybrid" : "",
      chartValuesOptions: ChartValuesOptions(
        showChartValues: this.isShowChartValue,
        showChartValuesInPercentage: this.switchPercentage,
      ),
    );
    final textWidget = Text("Switch-on to show the pie chart");

    return this.switchValue ? pieChartWidget : textWidget;
  }

  Widget propertiesWidget(String text, bool value, Function(bool) fun) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        SizedBox(width: 10.0),
        Switch(
          value: value,
          onChanged: fun,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Normal: Build Methods
    List<Widget> widgetList = [
      propertiesWidget(
        "Chart Type\n(Disc/Ring)",
        this.switchChartType,
        this.switchChartTypeValueChange,
      ),
      propertiesWidget(
        "Center Text",
        this.switchCenterText,
        this.switchCenterTextValueChange,
      ),
      propertiesWidget(
        "Percentage",
        this.switchPercentage,
        this.switchPercentageValueChange,
      ),
      propertiesWidget(
        "Show\nChart Value",
        this.isShowChartValue,
        this.switchShowChartValueChange,
      ),
    ];

    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(PieChartPage.title),
        actions: [
          Switch(
            value: this.switchValue,
            onChanged: this.switchValueChange,
            activeTrackColor: Colors.grey,
            activeColor: Colors.green,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              changedWidget(),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: widgetList,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
