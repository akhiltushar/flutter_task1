import 'package:first_task/constant.dart';
import 'package:first_task/gender_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  // void initState() {
  //   super.initState();
  //   _showAlert(context);
  // }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => _showAlert(context));
    return Scaffold(
      backgroundColor: BG_color,
      body: SafeArea(
        child: Column(
          children: [

            SizedBox(
              height: 30,
            ),
      
            //Skip Button
      
            Container(
              width: 350,
              // color: Colors.blue,
              alignment: Alignment(-0.90, 1),
              child: ElevatedButton(
                child: Text(
                  'Skip',
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(35, 35),
                    backgroundColor: Colors.grey[50],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                onPressed: () {},
              ),
            ),
      
            SizedBox(
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
                SizedBox(
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
      
            SizedBox(
              height: 80,
            ),
      
            //Text2
      
            Text(
              "By continuing I agree with",
              style: GoogleFonts.poppins(
                  color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
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
                Text(" "),
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
      
            SizedBox(
              height: 20,
            ),
      
            //Buttons
      
            InkWell(
              onTap: () {
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gender_page()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [BoxShadow(spreadRadius: 1, blurRadius: 0.10)]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 35, child: Image.asset("assets/icons/apple.png")),
                    Text('Continue with Apple',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
      
            SizedBox(
              height: 20,
            ),
      
            //Bottom Icons
      
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    height: 20,
                    child: Image.asset("assets/icons/google.webp"),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      minimumSize: Size(50, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.mail_outline,
                    color: Colors.black,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      minimumSize: Size(50, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
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
              // actions: [
              //   Container(
              //     height: 100,
              //     child: Image.asset(
              //       "assets/images/check_list.png",
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ],
              content: Container(
                height: 350,
                width: 300,
                //color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
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
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Login_page()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
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
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      child: Text(
                        'Not Now',
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Login_page()));
                      },
                    )
                  ],
                ),
              ),
            ));
  }
}
