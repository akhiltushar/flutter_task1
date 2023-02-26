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
          ],
        ),
      ),
    );
  }
}
