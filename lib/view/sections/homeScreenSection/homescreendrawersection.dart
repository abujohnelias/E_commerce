import 'package:e_comm/constant/colorconst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            onDetailsPressed: () {},
            decoration: BoxDecoration(color: ColorConst.purple),
            accountName: Text("User"),
            accountEmail: Text("user007@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              // backgroundImage:,
              radius: 25,
            ),
          ),

          //text1
          Align(
            alignment: Alignment.center,
            child: Text(
              "",
              style: TextStyle(
                  color: ColorConst.purple,
                  fontFamily: 'poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),

          ///list tiles
          Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Card(
                shadowColor: ColorConst.purple,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    ///
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: ListTile(
                        leading: Icon(
                          Icons.new_releases,
                          color: ColorConst.purple,
                        ),
                        title: Text(
                          "New",
                          style: GoogleFonts.poppins(),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                      ),
                    ),

                    ///
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: ListTile(
                        leading: Icon(
                          Icons.man_4_rounded,
                          color: ColorConst.purple,
                        ),
                        title: Text(
                          "Men",
                          style: GoogleFonts.poppins(),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                      ),
                    ),

                    ///
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: ListTile(
                        leading: Icon(
                          Icons.woman_rounded,
                          color: ColorConst.purple,
                        ),
                        title: Text(
                          "Women",
                          style: GoogleFonts.poppins(),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                      ),
                    ),

                    ///
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: ListTile(
                        leading: Icon(
                          Icons.boy_rounded,
                          color: ColorConst.purple,
                        ),
                        title: Text(
                          "Boys",
                          style: GoogleFonts.poppins(),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                      ),
                    ),

                    ///
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: ListTile(
                        leading: Icon(
                          Icons.girl_rounded,
                          color: ColorConst.purple,
                        ),
                        title: Text(
                          "Girls",
                          style: GoogleFonts.poppins(),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                      ),
                    ),

                    ///
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: ListTile(
                        leading: Icon(
                          Icons.watch_rounded,
                          color: ColorConst.purple,
                        ),
                        title: Text(
                          "Accessories",
                          style: GoogleFonts.poppins(),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                      ),
                    ),

                    ///
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: ListTile(
                        leading: Icon(
                          Icons.home_rounded,
                          color: ColorConst.purple,
                        ),
                        title: Text(
                          "Home",
                          style: GoogleFonts.poppins(),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_forward_ios_rounded)),
                      ),
                    ),

                    ///
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: ListTile(
                        leading: Icon(
                          Icons.kitchen,
                          color: ColorConst.purple,
                        ),
                        title: Text(
                          "Kitchen",
                          style: GoogleFonts.poppins(),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                      ),
                    ),

                    ///
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: ListTile(
                        leading: Icon(
                          Icons.diamond_rounded,
                          color: ColorConst.purple,
                        ),
                        title: Text(
                          "Jewellery",
                          style: GoogleFonts.poppins(),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
