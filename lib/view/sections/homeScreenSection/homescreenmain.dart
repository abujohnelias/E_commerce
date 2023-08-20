import 'package:e_comm/constant/colorconst.dart';
import 'package:e_comm/view/sections/homeScreenSection/homebodysection.dart';
import 'package:e_comm/view/sections/homeScreenSection/homescreendrawersection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/cusbottomnavbar.dart';

class HomeScreenMain extends StatefulWidget {
  const HomeScreenMain({super.key});

  @override
  State<HomeScreenMain> createState() => _HomeScreenMainState();
}

class _HomeScreenMainState extends State<HomeScreenMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      ///appbar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins',
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: ColorConst.red,
        elevation: 1,
      ),

      ///Drawer section
      drawer: HomeScreenDrawer(),

      ///body section
      body: Column(children: [Expanded(child: HomeScreenBody())]),
    );
  }
}
