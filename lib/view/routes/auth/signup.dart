import 'package:flutter/material.dart';
import 'package:givr/res/constants.dart';
import 'package:givr/res/size_config.dart';
import 'package:givr/view/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                color: const Color(0xff9D4EDD),
              ),
            ),
            Text(
              "A new way to give",
              style: GoogleFonts.quicksand(
                fontSize: getPropScreenWidth(18),
                fontWeight: FontWeight.w400,
                color: const Color(0xff9D4EDD),
              ),
            ),
            SizedBox(
              height: getPropScreenHeight(45),
            ),
            const SignUpTextField(),
            SizedBox(
              height: getPropScreenHeight(72),
            ),
            Container(
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
                  "Sign Up",
                  style: GoogleFonts.quicksand(
                    color: white,
                    fontSize: getPropScreenWidth(15),
                    fontWeight: FontWeight.w700,
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
                  AppRoute.login,
                );
                // Navigator.push(
                //   context,
                //   PageTransition(
                //     child: const Login(),
                //     type: PageTransitionType.fade,
                //   ),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.roboto(
                        fontSize: getPropScreenWidth(12),
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Log In",
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

class SignUpTextField extends StatelessWidget {
  const SignUpTextField({Key? key}) : super(key: key);

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
              hintText: 'NAME',
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
