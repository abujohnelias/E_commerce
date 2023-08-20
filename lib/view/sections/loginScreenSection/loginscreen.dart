import 'package:e_comm/constant/colorconst.dart';
import 'package:e_comm/view/sections/homeScreenSection/homescreenmain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //login animation
            // Icon(Icons.login_rounded, size: 100, color: Colors.deepPurple),

            //login text1
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                      color: ColorConst.lightBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),

            //login text2
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Please login to continue",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ),
            ),

            //username field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'UserName',
                    hintStyle: GoogleFonts.poppins(),
                    prefixIcon: Icon(
                      Icons.account_circle,
                      color: ColorConst.lightBlue,
                    ),
                    // labelText: 'UserName',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.next,
                validator: (uname) {
                  if (uname!.isEmpty) {
                    return 'Enter valid Username';
                  } else {
                    return null;
                  }
                },
              ),
            ),

            //password field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: ColorConst.lightBlue,
                    ),
                    suffixIcon: IconButton(
                      color: showpass == true
                          ? ColorConst.lightBlue
                          : ColorConst.red,
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(
                        showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    // labelText: 'Password',
                    hintText: 'Password',
                    hintStyle: GoogleFonts.poppins(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.done,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'Enter a valid password , length  should be greater than 6';
                  } else {
                    return null;
                  }
                },
              ),
            ),

            //forget password button
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      var snackBar =
                          SnackBar(content: Text('Sorry We Are Working On It',style: GoogleFonts.poppins(),));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text(
                      "Forgot Password",
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    )),
              ),
            ),

            //login button
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreenMain()));
                    } else {
                      return null;
                    }
                  },
                  child: Text("Login", style: GoogleFonts.poppins()),
                ),
              ),
            ),

            //signup section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //signup text
                Text(
                  "Not a member?",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w300),
                ),

                //signup button
                TextButton(
                    onPressed: () {
                      var snackBar =
                          SnackBar(content: Text('Sorry We Are Working On It',style: GoogleFonts.poppins(),));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text(
                      "Register now",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
