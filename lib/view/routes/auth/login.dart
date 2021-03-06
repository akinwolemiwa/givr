import 'package:flutter/material.dart';
import 'package:givr/res/constants.dart';
import 'package:givr/res/size_config.dart';
import 'package:givr/view/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Givr.",
              style: GoogleFonts.quicksand(
                fontSize: getPropScreenWidth(64),
                fontWeight: FontWeight.w700,
                color: darkpurple,
              ),
            ),
            Text(
              "A new way to give",
              style: GoogleFonts.quicksand(
                fontSize: getPropScreenWidth(18),
                fontWeight: FontWeight.w400,
                color: darkpurple,
              ),
            ),
            SizedBox(
              height: getPropScreenHeight(45),
            ),
            const TextField(),
            SizedBox(
              height: getPropScreenHeight(72),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRoute.nav,
                );
                // Navigator.push(
                //   context,
                //   PageTransition(
                //     child: const Nav(),
                //     type: PageTransitionType.fade,
                //   ),
                // );
              },
              child: Container(
                decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  color: darkpurple,
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.only(
                    // ignore: prefer_const_constructors
                    topRight: Radius.circular(62),
                    // ignore: prefer_const_constructors
                    bottomRight: Radius.circular(62),
                    // ignore: prefer_const_constructors
                    topLeft: Radius.circular(62),
                    // ignore: prefer_const_constructors
                    bottomLeft: Radius.circular(62),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                height: getPropScreenHeight(64),
                width: getPropScreenWidth(206),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: GoogleFonts.quicksand(
                      color: white,
                      fontSize: getPropScreenWidth(15),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenHeight(9),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRoute.signup,
                );
                // Navigator.push(
                //   context,
                //   PageTransition(
                //     child: const SignUp(),
                //     type: PageTransitionType.fade,
                //   ),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: GoogleFonts.roboto(
                        fontSize: getPropScreenWidth(12),
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Sign Up",
                    style: GoogleFonts.roboto(
                      fontSize: getPropScreenWidth(12),
                      fontWeight: FontWeight.w300,
                      color: darkpurple,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextField extends StatelessWidget {
  const TextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: getPropScreenHeight(67),
          width: getPropScreenWidth(326),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xff909090).withOpacity(0.25),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(37),
            ),
          ),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                  left: 15, bottom: 11, top: 11, right: 15),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: 'EMAIL',
              hintStyle: GoogleFonts.roboto(
                  fontSize: getPropScreenWidth(13),
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        SizedBox(
          height: getPropScreenHeight(23),
        ),
        Container(
          height: getPropScreenHeight(67),
          width: getPropScreenWidth(326),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xff909090).withOpacity(0.25),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(37),
            ),
          ),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                  left: 15, bottom: 11, top: 11, right: 15),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: 'PASSWORD',
              hintStyle: GoogleFonts.roboto(
                  fontSize: getPropScreenWidth(13),
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ],
    );
  }
}
