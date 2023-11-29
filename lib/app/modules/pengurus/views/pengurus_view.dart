import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hika_biofarma/widget/footer_widget.dart';

import '../controllers/pengurus_controller.dart';

class PengurusView extends GetView<PengurusController> {
  const PengurusView({Key? key}) : super(key: key);
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
              child: Text(
                'Pengurus\nHika.',
                style: GoogleFonts.roboto(
                  color: const Color(0XFF55A9B6),
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),
              ),
            ),
            const SizedBox(height: 29),
            const PengurusWidget(
              jabatanPengurus: 'Ketua Umum HIKA BF',
              namaPengurus: 'AGUNG JASA MUTTAQIEN USMADI',
              deskripsi:
                  "      Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...",
              gambarProfil: '',
            ),
            const SizedBox(height: 33),
            const PengurusWidget(
              jabatanPengurus: 'Wakil Ketua Umum HIKA BF',
              namaPengurus: 'YUDHA BRAMANTI',
              deskripsi:
                  "      Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...",
              gambarProfil: '',
            ),
            const SizedBox(height: 33),
            const PengurusWidget(
              jabatanPengurus: 'SEKRETARIS HIKA BF',
              namaPengurus: 'SAEFUL',
              deskripsi:
                  "      Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...",
              gambarProfil: '',
            ),
            const SizedBox(height: 39),
            const KembaliSection(),
            const SizedBox(height: 55),
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}

class PengurusWidget extends StatelessWidget {
  final String namaPengurus;
  final String jabatanPengurus;
  final String deskripsi;
  final String gambarProfil;

  const PengurusWidget({
    Key? key,
    required this.namaPengurus,
    required this.jabatanPengurus,
    required this.deskripsi,
    required this.gambarProfil,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Color(0XFF55A9B6),
                minRadius: 70,
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jabatanPengurus,
                      style: GoogleFonts.roboto(
                        color: const Color(0XFF55A9B6),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      namaPengurus,
                      style: GoogleFonts.roboto(fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 21),
          Text(
            deskripsi,
            style: GoogleFonts.roboto(fontSize: 12, height: 1.5),
          ),
        ],
      ),
    );
  }
}

class KembaliSection extends StatelessWidget {
  const KembaliSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 26,
        width: 124,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0XFFEF8318),
        ),
        child: GestureDetector(
          onTap: () => Get.back(),
          child: Center(
            child: Text(
              'Kembali',
              style: GoogleFonts.roboto(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
