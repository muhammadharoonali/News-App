import 'dart:async';
import 'package:app_news/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Sc extends StatefulWidget {
  const Sc({super.key});

  @override
  State<Sc> createState() => _ScState();
}

class _ScState extends State<Sc> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Hom()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sc.jpg',

              fit: BoxFit.cover,

              height: height * .5,
            ),
            SizedBox(height: 12),

            Text('Top Headlines', style: GoogleFonts.zenAntique(fontSize: 25)),
            SpinKitRipple(color: Colors.amber),
          ],
        ),
      ),
    );
  }
}
