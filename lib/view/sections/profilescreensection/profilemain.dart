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
      ///bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        selectedItemColor: ColorConst.purple,
        selectedLabelStyle: GoogleFonts.poppins(color: Colors.black26),
        unselectedIconTheme: IconThemeData(color: Colors.black26),
        backgroundColor: Colors.white,
        unselectedLabelStyle: GoogleFonts.poppins(color: Colors.black26),
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreenMain(),
                      ));
                },
                icon: Icon(Icons.home_rounded)),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FavoriteScreenMain(),
                      ));
                },
                icon: Icon(Icons.favorite_rounded)),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreenMain(),
                      ));
                },
                icon: Icon(Icons.account_circle)),
            label: 'Profile',
          ),
        ],
      ),body: Center(child: Text("working on profile screen",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.w700),)),
    );
  }
}
