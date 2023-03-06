import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

// ignore: camel_case_types
class timePage extends StatefulWidget {
  const timePage({super.key});

  @override
  State<timePage> createState() => _timePageState();
}

// ignore: camel_case_types
class _timePageState extends State<timePage> {
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
    );
  }
}