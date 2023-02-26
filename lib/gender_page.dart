import 'package:first_task/age_page.dart';
import 'package:first_task/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Gender_page extends StatefulWidget {
  const Gender_page({super.key});

  @override
  State<Gender_page> createState() => _Gender_pageState();
}

// ignore: camel_case_types
class _Gender_pageState extends State<Gender_page> {
  var _gender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: BG_color,
      ),
      backgroundColor: BG_color,
      body: SafeArea(
        child: Column(
          children: [
            Text('Select your gender',
                style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Male Gender
                InkWell(
                  onTap: () {
                    // tell widget to load again
                    setState(() {
                      _gender = "Male";
                    });
                  },
                  child: Container(
                    height: 110,
                    width: 100,
                    decoration: BoxDecoration(
                      color: _gender == "Male" ? Colors.blue : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 70,
                          child: Image.asset("assets/images/male.png",
                              fit: BoxFit.cover),
                        ),
                        Text("Male",
                            style: GoogleFonts.poppins(
                                color: _gender == "Male"
                                        ? Colors.white
                                        : Colors.black,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ),
                //Female Gender
                InkWell(
                  onTap: () {
                    // tell widget to load again
                    setState(() {
                      _gender = "Female";
                    });
                  },
                  child: Container(
                    height: 110,
                    width: 100,
                    decoration: BoxDecoration(
                      color: _gender == "Female" ? Colors.blue : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 70,
                          child: Image.asset("assets/images/female.png",
                              fit: BoxFit.cover),
                        ),
                        Text("Female",
                            style: GoogleFonts.poppins(
                                color: _gender == "Female"
                                        ? Colors.white
                                        : Colors.black,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ),
                // Other Gender
                InkWell(
                  onTap: () {
                    // tell widget to load again
                    setState(() {
                      _gender = "Other";
                    });
                  },
                  child: Container(
                    height: 110,
                    width: 100,
                    decoration: BoxDecoration(
                      color: _gender == "Other" ? Colors.blue : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 70,
                          child: Image.asset("assets/images/other.png",
                              fit: BoxFit.cover),
                        ),
                        Text("Other",
                            style: GoogleFonts.poppins(
                                color: _gender == "Other"
                                        ? Colors.white
                                        : Colors.black,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                if (_gender.isEmpty) {
                  // Show msg to select gender
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Please select gender",
                      ),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Age_page()),
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
