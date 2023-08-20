import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatefulWidget {
   BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();

}
  int index = 0;
class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          // backgroundColor: Colors.deepPurple,
          // fixedColor: Colors.deepPurple,
          selectedItemColor: Colors.white,
          selectedLabelStyle: GoogleFonts.poppins(),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.deepPurple),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Account'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          ],
        );
  }
}