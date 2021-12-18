import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sirapop App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            profile(),
            firstname(),
            nickname(),
            birthday(),
            telephone(),
            hobby(),
            student(),
          ],
        ),
      ),
    );
  }

  Widget profile() {
    return const CircleAvatar(
      radius: 150,
      child: CircleAvatar(
        radius: 140,
        backgroundImage: AssetImage('image/1.jpg'),
      ),
    );
  }

  Widget telephone() {
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 32),
      padding: const EdgeInsets.all(8),
      height: 100,
      child: Card(
        color: Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 32),
                child: FaIcon(FontAwesomeIcons.mobile),
              ),
              Column(
                children: [
                  Text(
                    '0642635421',
                    style: GoogleFonts.prompt(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '622021106@tsu.ac.th',
                    style: GoogleFonts.prompt(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget birthday() {
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 32),
      padding: const EdgeInsets.all(8),
      height: 100,
      child: Card(
        color: Colors.amber[100],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 32),
                child: FaIcon(FontAwesomeIcons.birthdayCake),
              ),
              Column(
                children: [
                  Text(
                    '7 กันยายน 2543',
                    style: GoogleFonts.prompt(
                        color: Colors.amber[800],
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '7 SEPTEMBER 2543',
                    style: GoogleFonts.prompt(
                        color: Colors.amber[800],
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Text nickname() {
    return Text(
      ' ชื่อเล่น กาย',
      style: GoogleFonts.prompt(
          color: Colors.amber[800], fontSize: 20, fontWeight: FontWeight.w400),
    );
  }

  Text firstname() {
    return Text(
      ' นาย สิรภพ ศรีโยธา',
      style: GoogleFonts.prompt(
          color: Colors.amber[800], fontSize: 20, fontWeight: FontWeight.w400),
    );
  }
}

Row hobby() {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: EdgeInsets.only(right: 32),
      child: FaIcon(FontAwesomeIcons.futbol),
    ),
    Text(
      ' ฟุตบอล',
      style: GoogleFonts.prompt(
          color: Colors.amber[800], fontSize: 20, fontWeight: FontWeight.w400),
    ),
  ]);
}

Widget student() {
  return Container(
    margin: const EdgeInsets.only(left: 32, right: 32),
    padding: const EdgeInsets.all(8),
    height: 100,
    child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 32),
              child: FaIcon(FontAwesomeIcons.university),
            ),
            Column(
              children: [
                Text(
                  'คณะวิทยาศาสตร์',
                  style: GoogleFonts.prompt(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'สาขา เทคโนโลยีสานสนเทศ',
                  style: GoogleFonts.prompt(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
