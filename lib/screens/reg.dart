import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegScreen extends StatefulWidget {
  @override
  _RegScreenState createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
            child: Text(
              'SIGN UP',
              style: GoogleFonts.averiaLibre(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
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
                    labelText: 'FIRST NAME',
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
                SizedBox(height: 40),
                CustomButton(
                  backColor: Colors.green,
                  foreColor: Colors.white,
                  text: 'SIGN UP',
                ),
                SizedBox(height: 20),
                CustomButton(
                  backColor: Colors.white,
                  foreColor: Colors.black,
                  text: 'Sign up with Facebook',
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
                        text: 'Already a member? ',
                      ),
                      TextSpan(
                        text: 'Login',
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
