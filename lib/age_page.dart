import 'package:first_task/constant.dart';
import 'package:first_task/goals_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Age_page extends StatefulWidget {
  const Age_page({super.key});

  @override
  State<Age_page> createState() => _Age_pageState();
}

// ignore: camel_case_types
class _Age_pageState extends State<Age_page> {
  var _ageSelection = "";

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
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('Select your gender',
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 330,
              ),
              Column(
                children: [
                  //Age Box set 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          // tell widget to load again
                          setState(() {
                            _ageSelection = "12-29";
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: _ageSelection == "12-29"
                                ? Colors.blue
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("12-29",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // tell widget to load again
                          setState(() {
                            _ageSelection = "30-39";
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: _ageSelection == "30-39"
                                ? Colors.blue
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("30-39",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //Age Box set 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          // tell widget to load again
                          setState(() {
                            _ageSelection = "40-49";
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: _ageSelection == "40-49"
                                ? Colors.blue
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("40-49",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // tell widget to load again
                          setState(() {
                            _ageSelection = "50+";
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: _ageSelection == "50+"
                                ? Colors.blue
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("50+",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      )
                    ],
                  ),
                  //Next Page Button
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      if (_ageSelection.isEmpty) {
                        // Show msg to select gender
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Please select age",
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
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
