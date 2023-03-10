import 'package:first_task/constant.dart';
import 'package:first_task/gender_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

// ignore: camel_case_types
class _Login_pageState extends State<Login_page> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _showAlert(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration.zero, () => _showAlert(context));
    return Scaffold(
      backgroundColor: BG_color,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            //Skip Button
            Container(
              width: 350,
              // color: Colors.blue,
              alignment: const Alignment(
                -0.90,
                1,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(
                      35,
                      35,
                    ),
                    backgroundColor: Colors.grey[50],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Image
            Image.asset("assets/images/img1.png", fit: BoxFit.cover),
            //Text
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Become A Better You',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Log in to personalize your',
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'experience and track your progress',
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            //Text2
            Text(
              "By continuing I agree with",
              style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "the ",
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Privacy Policy,",
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
                const Text(" "),
                Text(
                  "Terms & Conditions",
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //Buttons
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Gender_page()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    // ignore: prefer_const_constructors
                    boxShadow: const [
                      BoxShadow(spreadRadius: 1, blurRadius: 0.10)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 35,
                        child: Image.asset("assets/icons/apple.png")),
                    Text('Continue with Apple',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Bottom Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      minimumSize: const Size(
                        50,
                        50,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: SizedBox(
                    height: 20,
                    child: Image.asset("assets/icons/google.webp"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      minimumSize: const Size(
                        50,
                        50,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Icon(
                    Icons.mail_outline,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  //Dailog Box Code

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: SizedBox(
                height: 350,
                width: 300,
                //color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        "assets/images/check_list.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                        'Stay aware! Allow us to \n notify you about new reads, \n inssight and daily goals',
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              const BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 0.10,
                                  color: Colors.blue)
                            ]),
                        child: Text(
                          'Allow Notifications',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      child: Text(
                        'Not Now',
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ));
  }
}
