import 'package:e_comm/constant/colorconst.dart';
import 'package:e_comm/view/sections/homeScreenSection/homemain.dart';
import 'package:e_comm/view/sections/profilescreensection/profilemain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteScreenMain extends StatefulWidget {
  const FavoriteScreenMain({super.key});

  @override
  State<FavoriteScreenMain> createState() => _FavoriteScreenMainState();
}

int index = 1;

class _FavoriteScreenMainState extends State<FavoriteScreenMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Center(
          child: Text(
        "working on favorite screen",
        style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700,color: Colors.black),
      )),
    );
  }
}
