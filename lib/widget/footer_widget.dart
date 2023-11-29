import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: const Color(0XFF252525),
      padding: const EdgeInsets.only(left: 20),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 13),
              Image.asset('assets/images/hika_logo.png'),
              const SizedBox(height: 9),
              Text(
                'Kontak      : +62123456789',
                style: GoogleFonts.roboto(fontSize: 10, color: Colors.white),
              ),
              const SizedBox(height: 5),
              Text(
                'Instagram   : hika_biofarma',
                style: GoogleFonts.roboto(fontSize: 10, color: Colors.white),
              ),
              const SizedBox(height: 5),
              Text(
                'Telegram    : Info HIKA',
                style: GoogleFonts.roboto(fontSize: 10, color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 30),
            child: Image.asset('assets/images/hika_footer.png'),
          ),
        ],
      ),
    );
  }
}
