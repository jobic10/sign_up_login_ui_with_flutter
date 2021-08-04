import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.black87,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 110,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          spreadRadius: 3,
                        )
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.jpg'),
                      radius: 90,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'MR. FREEMAN',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '\u{1F7E2} Available for freelance',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.green.withOpacity(.8),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Wrap(
                children: [
                  MyCard('3D ILLUSTRATION'),
                  MyCard('ANIMATION'),
                  MyCard('LOW POLY'),
                  MyCard('CROWBAR'),
                  MyCard('ICONS'),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StatText(
                  count: 1253,
                  text: 'FOLLOWERS',
                ),
                StatText(
                  count: 658,
                  text: 'FOLLOWING',
                ),
                StatText(
                  count: 256,
                  text: 'WORKS',
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 60,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(.8),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'HIRE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                    wordSpacing: 13,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StatText extends StatelessWidget {
  final int count;
  final String text;
  const StatText({
    Key? key,
    required this.count,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Text(
            '$count',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String text;
  const MyCard(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * .9);
    path.lineTo(size.width, size.height * .6);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
