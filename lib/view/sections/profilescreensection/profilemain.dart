import 'package:e_comm/view/sections/favoriteScreenSection/favoritemain.dart';
import 'package:e_comm/view/sections/homeScreenSection/homemain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constant/colorconst.dart';

class ProfileScreenMain extends StatefulWidget {
  const ProfileScreenMain({super.key});

  @override
  State<ProfileScreenMain> createState() => _ProfileScreenMainState();
}

int index = 2;

class _ProfileScreenMainState extends State<ProfileScreenMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "working on profile screen",
        style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700),
      )),
    );
  }
}
