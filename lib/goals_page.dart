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
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color:
                              selectedRadio == 1 ? Colors.lightBlueAccent : Colors.white,
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
                                    color: selectedRadio == 1
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 115,
                            ),
                            Radio(
                              value: 1,
                              groupValue: selectedRadio,
                              onChanged: (val) {
                                setSelectedRadio(val as int);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color:
                              selectedRadio == 2 ? Colors.lightBlueAccent : Colors.white,
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
                                    color: selectedRadio == 2
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 68,
                            ),
                            Radio(
                              value: 2,
                              groupValue: selectedRadio,
                              onChanged: (val) {
                                setSelectedRadio(val as int);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color:
                              selectedRadio == 3 ? Colors.lightBlueAccent : Colors.white,
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
                                    color: selectedRadio == 3
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 100,
                            ),
                            Radio(
                                value: 3,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val as int);
                                })
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color:
                              selectedRadio == 4 ? Colors.lightBlueAccent : Colors.white,
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
                                    color: selectedRadio == 4
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 68,
                            ),
                            Radio(
                              value: 4,
                              groupValue: selectedRadio,
                              onChanged: (val) {
                                setSelectedRadio(val as int);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color:
                              selectedRadio == 5 ? Colors.lightBlueAccent : Colors.white,
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
                                    color: selectedRadio == 5
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 55,
                            ),
                            Radio(
                                value: 5,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val as int);
                                })
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color:
                              selectedRadio == 6 ? Colors.lightBlueAccent : Colors.white,
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
                                    color: selectedRadio == 6
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 88,
                            ),
                            Radio(
                                value: 6,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val as int);
                                })
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color:
                              selectedRadio == 7 ? Colors.lightBlueAccent : Colors.white,
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
                                    color: selectedRadio == 7
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 78,
                            ),
                            Radio(
                                value: 7,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val as int);
                                })
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color:
                              selectedRadio == 8 ? Colors.lightBlueAccent : Colors.white,
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
                                    color: selectedRadio == 8
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 38,
                            ),
                            Radio(
                                value: 8,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val as int);
                                })
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color:
                              selectedRadio == 9 ? Colors.lightBlueAccent : Colors.white,
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
                                    color: selectedRadio == 9
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 65,
                            ),
                            Radio(
                                value: 9,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val as int);
                                })
                          ],
                        ),
                      ),
                    ),
                    //Space Between them
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color:
                              selectedRadio == 10 ? Colors.lightBlueAccent : Colors.white,
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
                                    color: selectedRadio == 10
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 35,
                            ),
                            Radio(
                                value: 10,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val as int);
                                })
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
                if (selectedRadio.isEmpty) {
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
