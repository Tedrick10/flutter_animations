// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// StepperPage: StatefulWidget Class
class StepperPage extends StatefulWidget {
  // Static: Class Properties
  static String title = "Stepper Page";
  static String routeName = "/stepper";

  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  // Normal: Class Properties
  int _currentStep = 0;
  bool _switchValue = true;

  // Action: Class Methods
  void tapped(int step) {
    setState(() {
      this._currentStep = step;
    });
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  // Build: Class Methods
  @override
  Widget build(BuildContext context) {
    // Widget: Class Properties
    Step step01 = Step(
      isActive: this._currentStep >= 0,
      state: this._currentStep >= 0 ? StepState.complete : StepState.disabled,
      title: Text("Account"),
      content: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: "Email Address"),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Password"),
          ),
        ],
      ),
    );
    Step step02 = Step(
      title: new Text('Address'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Postcode'),
          ),
        ],
      ),
      isActive: _currentStep >= 0,
      state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
    );
    Step step03 = Step(
      title: new Text('Mobile Number'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Mobile Number'),
          ),
        ],
      ),
      isActive: _currentStep >= 0,
      state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
    );

    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(StepperPage.title),
        actions: [
          Switch(
            value: this._switchValue,
            onChanged: (bool currentValue) {
              setState(() {
                this._switchValue = currentValue;
              });
            },
            activeColor: Colors.green,
            activeTrackColor: Colors.grey,
          ),
        ],
      ),
      body: Center(
        child: Stepper(
          type:
              this._switchValue ? StepperType.vertical : StepperType.horizontal,
          physics: ScrollPhysics(),
          currentStep: this._currentStep,
          onStepTapped: this.tapped,
          onStepContinue: this.continued,
          onStepCancel: this.cancel,
          steps: [step01, step02, step03],
        ),
      ),
    );
  }
}
