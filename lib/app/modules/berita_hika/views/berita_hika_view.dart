import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hika_biofarma/app/modules/berita_hika/views/berita_hika_detail_view.dart';
import 'package:hika_biofarma/widget/footer_widget.dart';

import '../controllers/berita_hika_controller.dart';

class BeritaHikaView extends GetView<BeritaHikaController> {
  const BeritaHikaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Berita\nHika.',
                    style: GoogleFonts.roboto(
                      color: const Color(0XFF55A9B6),
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 21),
                  const BeritaHikaCardSection(),
                ],
              ),
            ),
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}

class BeritaHikaCardSection extends StatelessWidget {
  const BeritaHikaCardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BeritaHikaController());
    return ListView.builder(
      itemCount: controller.beritaHikaList.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        var berita = controller.beritaHikaList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                berita.image,
                width: Get.width,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 16),
              Text(
                berita.title,
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: const Color(0XFF55A9B6),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                berita.date,
                style: GoogleFonts.roboto(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: const Color(0XFF5E5E5E),
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  Get.to(BeritaHikaDetailView(data: berita));
                },
                child: Text(
                  'Baca berita...',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0XFF55A9B6),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
