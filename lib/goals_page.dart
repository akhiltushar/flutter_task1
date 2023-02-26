import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

// ignore: camel_case_types
class Goal_page extends StatefulWidget {
  const Goal_page({super.key});

  @override
  State<Goal_page> createState() => _Goal_pageState();
}

// ignore: camel_case_types
class _Goal_pageState extends State<Goal_page> {
  var _goalSelection = "";

  // ignore: prefer_typing_uninitialized_variables
  var selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

// Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: BG_color,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: BG_color,
      body: Center(
        child: Column(
          children: [
            Text('What are your goals?',
                style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 20,
            ),
            //Scrolling Widget
            SizedBox(
              height: 520,
              width: 310,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                          setState(() {
                            _goalSelection = "Win at Work";
                          });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _goalSelection == "Win at Work"
                                ? Colors.blue
                                : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "🎯",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Win at Work",
                                style: GoogleFonts.poppins(
                                    color: _goalSelection == "Win at Work"
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 115,
                            ),
                            const Radio(
                                value: 1, groupValue: null, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                          setState(() {
                            _goalSelection = "Have more money";
                          });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _goalSelection == "Have more money"
                                ? Colors.blue
                                : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "🤑",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Have more money",
                                style: GoogleFonts.poppins(
                                    color: _goalSelection == "Have more money"
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 68,
                            ),
                            const Radio(
                                value: 2, groupValue: null, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                          setState(() {
                            _goalSelection = "Be productive";
                          });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _goalSelection == "Be productive"
                                ? Colors.blue
                                : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "⏰",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Be productive",
                                style: GoogleFonts.poppins(
                                    color: _goalSelection == "Be productive"
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 100,
                            ),
                            const Radio(
                                value: 3, groupValue: null, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                          setState(() {
                            _goalSelection = "Build strong family";
                          });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _goalSelection == "Build strong family"
                                ? Colors.blue
                                : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "👨‍👩‍👧‍👦",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Build strong family",
                                style: GoogleFonts.poppins(
                                    color: _goalSelection == "Build strong family"
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 68,
                            ),
                            const Radio(
                                value: 4, groupValue: null, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                          setState(() {
                            _goalSelection = "Have a healthy body";
                          });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _goalSelection == "Have a healthy body"
                                ? Colors.blue
                                : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "💪🏻",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Have a healthy body",
                                style: GoogleFonts.poppins(
                                    color: _goalSelection == "Have a healthy body"
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 55,
                            ),
                            const Radio(
                                value: 5, groupValue: null, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                          setState(() {
                            _goalSelection = "Love & be loved";
                          });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _goalSelection == "Love & be loved"
                                ? Colors.blue
                                : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "👩‍❤️‍👨",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Love & be loved",
                                style: GoogleFonts.poppins(
                                    color: _goalSelection == "Love & be loved"
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 88,
                            ),
                            const Radio(
                                value: 6, groupValue: null, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                          setState(() {
                            _goalSelection = "Joined the forces";
                          });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _goalSelection == "Joined the forces"
                                ? Colors.blue
                                : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "🚀",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Joined the forces",
                                style: GoogleFonts.poppins(
                                    color: _goalSelection == "Joined the forces"
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 78,
                            ),
                            const Radio(
                                value: 7, groupValue: null, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(onTap: () {
                        // tell widget to load again
                          setState(() {
                            _goalSelection = "Explore more countries";
                          });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _goalSelection == "Explore more countries"
                                ? Colors.blue
                                : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "🗺",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Explore more countries",
                                style: GoogleFonts.poppins(
                                    color: _goalSelection == "Explore more countries"
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 38,
                            ),
                            const Radio(
                                value: 8, groupValue: null, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                          setState(() {
                            _goalSelection = "Behind the camera";
                          });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _goalSelection == "Behind the camera"
                                ? Colors.blue
                                : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "🎥",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Behind the camera",
                                style: GoogleFonts.poppins(
                                    color: _goalSelection == "Behind the camera"
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 65,
                            ),
                            const Radio(
                                value: 9, groupValue: null, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // tell widget to load again
                          setState(() {
                            _goalSelection = "Know more about India";
                          });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _goalSelection == "Know more about India"
                                ? Colors.blue
                                : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "🇮🇳",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Know more about India",
                                style: GoogleFonts.poppins(
                                    color: _goalSelection == "Know more about India"
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 35,
                            ),
                            const Radio(
                                value: 10, groupValue: null, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            //Bottom Button
            InkWell(
              onTap: () {
                if (_goalSelection.isEmpty) {
                  // Show msg to select gender
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Please select goals",
                      ),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Goal_page()),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('Continue',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
