import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                  child: Text(
                    'Hello',
                    style: GoogleFonts.averiaLibre(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 65),
                  padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'There',
                          style: GoogleFonts.averiaLibre(
                            fontSize: 80,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\u{1F7E2}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            textBaseline: TextBaseline.ideographic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 35,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment(1, 0),
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: InkWell(
                    child: Text(
                      'Forgot Password',
                      style: GoogleFonts.montserrat(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                CustomButton(
                  backColor: Colors.green,
                  foreColor: Colors.white,
                  text: 'LOGIN',
                ),
                SizedBox(height: 20),
                CustomButton(
                  backColor: Colors.white,
                  foreColor: Colors.black,
                  text: 'Login with Facebook',
                  iconData: Icons.facebook_sharp,
                  isBorder: true,
                ),
                SizedBox(
                  height: 70,
                ),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: 'New to spotify? ',
                      ),
                      TextSpan(
                        text: 'Register',
                        style: GoogleFonts.montserrat(
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color backColor;
  final Color foreColor;
  final String text;
  final bool? isBorder;
  final IconData? iconData;
  const CustomButton({
    Key? key,
    required this.backColor,
    required this.foreColor,
    required this.text,
    this.iconData,
    this.isBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: isBorder! ? Border.all(width: 2) : null,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: backColor,
        elevation: 7.0,
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onTap: () {},
          child: Center(
            child: iconData == null
                ? Text(
                    text,
                    style: GoogleFonts.montserrat(
                      color: foreColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        iconData,
                        color: foreColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        text,
                        style: GoogleFonts.montserrat(
                          color: foreColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
