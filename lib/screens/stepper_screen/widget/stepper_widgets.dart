import 'package:flutter/material.dart';
import 'package:stepper_ui/models/app_routes.dart';
import 'package:stepper_ui/utils/string.dart';

import '../../../utils/colors.dart';
import '../../../utils/textstyle.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.light(primary: mainColor),
        ),
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Stepper(
                  type: stepperType,
                  physics: const ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue: continued,
                  onStepCancel: cancel,
                  steps: <Step>[
                    Step(
                      title: Text(
                        profilePicture,
                        style: mainText,
                      ),
                      content: Column(
                        children: [],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        name,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: name,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        phone,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: phone,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 2
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        email,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: email,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 3
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        dob,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: dob,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 4
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        gender,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: gender,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 5
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        currentLocation,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: currentLocation,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 6
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        nationalities,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: nationalities,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 7
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        relegion,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: relegion,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 8
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        languages,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: languages,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 9
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        biography,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: biography,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 10
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep <= 10
        ? (_currentStep == 10)
            ? Navigator.of(context).pushNamed(AppRoutes().homeScreen)
            : setState(() => _currentStep += 1)
        : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
