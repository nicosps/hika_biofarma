import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PengurusCardWidget extends StatelessWidget {
  final String image;
  final String title;
  const PengurusCardWidget({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(image),
        Positioned(
          bottom: 16,
          child: Container(
            width: 95,
            height: 17,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: const Offset(4.0, 4.0),
                  blurRadius: 4.0,
                  spreadRadius: 0.0,
                ),
              ],
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.roboto(fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
