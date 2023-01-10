import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AddBook extends StatefulWidget {
  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  int _activeStepIndex = 0;
  String path = "";

  TextEditingController Field = TextEditingController();

  TextEditingController Course = TextEditingController();

  TextEditingController pass = TextEditingController();

  TextEditingController Subject = TextEditingController();

  TextEditingController pincode = TextEditingController();

  void SelectFile() async {
    var result = await FilePicker.getFile();
    String fileName = result.path.split('/').last;
    print(fileName);

    setState(() {
      path = fileName;
    });
  }

  void onStepContinue() {
    if (_activeStepIndex < (stepList().length - 1)) {
      setState(() {
        _activeStepIndex += 1;
      });
    } else {
      print('Submited');
    }
  }

  void onStepCancel() {
    if (_activeStepIndex == 0) {
      return;
    }
    setState(() {
      _activeStepIndex -= 1;
    });
  }

  void onStepTapped(int index) {
    setState(() {
      _activeStepIndex = index;
    });
  }

  // void SelectFile() async {

  // }

  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text('Course Info'),
          content: Container(
            child: Column(
              children: [
                TextField(
                  controller: Field,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Field',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: Course,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Course',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: pass,
                  // obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Level',
                  ),
                ),
              ],
            ),
          ),
        ),
        Step(
            state: StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text('File'),
            content: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: Subject,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Subject Name',
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.lightBlue, width: 2),
                        borderRadius: BorderRadius.circular(4)),
                    child: TextButton.icon(
                      icon: Icon(Icons.arrow_right),
                      label: Text('Select File: $path'),
                      onPressed: SelectFile,
                    ),
                  )
                ],
              ),
            )),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Add Book")),
        body: Container(
          child: Column(
            children: [
              Stepper(
                currentStep: _activeStepIndex,
                steps: stepList(),
                onStepCancel: onStepCancel,
                onStepContinue: onStepContinue,
                onStepTapped: onStepTapped,
              )
            ],
          ),
        ));
  }
}
