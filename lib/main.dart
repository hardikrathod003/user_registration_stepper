import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int initialindexstepper = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Your Profile "),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                physics: BouncingScrollPhysics(),
                currentStep: initialindexstepper,
                onStepTapped: (int step) {
                  setState(() {
                    initialindexstepper = step;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    if (initialindexstepper < 9) initialindexstepper++;
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (initialindexstepper > 0) initialindexstepper--;
                  });
                },
                controlsBuilder: (context, details) {
                  return Row(
                    children: [
                      SizedBox(height: 70),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff54759E),
                          ),
                          child: (initialindexstepper == 9)
                              ? Text("ADD")
                              : Text("CONTINUE"),
                          onPressed: details.onStepContinue),
                      SizedBox(width: 50),
                      TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.grey,
                          ),
                          child: Text("CANCEL"),
                          onPressed: details.onStepCancel),
                    ],
                  );
                },
                steps: <Step>[
                  Step(
                    // isActive: true,
                    title: const Text("PROFILE PHOTO"),
                    isActive: initialindexstepper >= 0,
                    state: initialindexstepper >= 1
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      // color: Colors.red,
                      // alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 60,
                                    child: Text("ADD"),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {},
                                    mini: true,
                                    child: const Icon(Icons.add),
                                  ),
                                  SizedBox(height: 30),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("NAME"),
                    isActive: initialindexstepper >= 0,
                    state: initialindexstepper >= 2
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Hardik rathod",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("phone"),
                    isActive: initialindexstepper >= 0,
                    state: initialindexstepper >= 3
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "+91 9427712415",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Email"),
                    isActive: initialindexstepper >= 0,
                    state: initialindexstepper >= 4
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Example@gmail.com",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Dob"),
                    isActive: initialindexstepper >= 0,
                    state: initialindexstepper >= 5
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "3 july,2003",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Gender"),
                    isActive: initialindexstepper >= 0,
                    state: initialindexstepper >= 6
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Male",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Current Location"),
                    isActive: initialindexstepper >= 0,
                    state: initialindexstepper >= 7
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText:
                                "365, Vivekanand society, near archana school,varchha,surat",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Nationality"),
                    isActive: initialindexstepper >= 0,
                    state: initialindexstepper >= 8
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "indian",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Relogion"),
                    isActive: initialindexstepper >= 0,
                    state: initialindexstepper >= 9
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Hindu",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Language"),
                    isActive: initialindexstepper >= 0,
                    state: initialindexstepper >= 10
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Gujarati",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
