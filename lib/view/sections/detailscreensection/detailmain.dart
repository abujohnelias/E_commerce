import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreenMain extends StatelessWidget {
  const DetailScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
          child: Text(
        "working on Detail screen",
        style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700,color: Colors.black),
      )),);
  }
}