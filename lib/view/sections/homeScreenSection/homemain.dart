import 'package:e_comm/constant/colorconst.dart';
import 'package:e_comm/model/carousalmodel.dart';
import 'package:e_comm/model/productmodel.dart';
import 'package:e_comm/view/sections/favoriteScreenSection/favoritemain.dart';
import 'package:e_comm/view/sections/homeScreenSection/homebodysection.dart';
import 'package:e_comm/view/sections/homeScreenSection/homecarousalsection.dart';
import 'package:e_comm/view/sections/homeScreenSection/homedrawersection.dart';
import 'package:e_comm/view/sections/homeScreenSection/homesearchbarsection.dart';
import 'package:e_comm/view/sections/profilescreensection/profilemain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/cusbottomnavbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreenMain extends StatefulWidget {
  const HomeScreenMain({super.key});

  @override
  State<HomeScreenMain> createState() => _HomeScreenMainState();
}

int index = 0;

class _HomeScreenMainState extends State<HomeScreenMain> {
  List<CarousalProducts> carousalProducts01 = [
    CarousalProducts("c1",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL: "CarousalproductImageURL"),
    CarousalProducts("c2",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL: "CarousalproductImageURL"),
    CarousalProducts("c3",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL: "CarousalproductImageURL"),
    CarousalProducts("c4",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL:
            "https://images.unsplash.com/photo-1572196223922-d8b7e0ab0b4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
    CarousalProducts("c5",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL:
            "https://images.unsplash.com/photo-1572196223922-d8b7e0ab0b4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
    CarousalProducts("c6",
        CarousalproductPrice: "CarousalproductPrice",
        CarousalproductImageURL:
            "https://images.unsplash.com/photo-1572196223922-d8b7e0ab0b4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
  ];
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
        actions: [
          ///app bar
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomsearchDeligate());
              },
              icon: Icon(Icons.search))
        ],
      ),

      ///Drawer section
      drawer: HomeScreenDrawer(),

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
      ),

      ///body section
      body: Container(
        child: Column(children: [
          
          Expanded(child: Padding(
            padding: const EdgeInsets.only(top: 10,bottom:5),
            child: SizedBox(child: HomeScreenCarousal(),height: 200,),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 10,top: 5),
            child: HomeScreenBody(),
          )),
          SizedBox(
            height: 10,
          ),
          
        ]),
      ),
    );
  }
}
