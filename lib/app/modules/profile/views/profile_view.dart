import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hika_biofarma/widget/footer_widget.dart';
import 'package:hika_biofarma/widget/pengurus_card_widget.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
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
                'Profil\nHika.',
                style: GoogleFonts.roboto(
                  color: const Color(0XFF55A9B6),
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),
              ),
            ),
            const SizedBox(height: 21),
            const HeaderSection(),
            const SizedBox(height: 19),
            const VisiSection(),
            const SizedBox(height: 19),
            const MisiSection(),
            const SizedBox(height: 50),
            const DetailSection(),
            const SizedBox(height: 50),
            const TotalAggotaSection(),
            const SizedBox(height: 39),
            const BaganOrganisasiSection(),
            const SizedBox(height: 39),
            const PengurusHikaSection(),
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

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/pengurus_cover_image.png',
      width: Get.width,
      fit: BoxFit.fitWidth,
    );
  }
}

class VisiSection extends StatelessWidget {
  const VisiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Center(
            child: Text(
              'VISI',
              style: GoogleFonts.roboto(
                color: const Color(0XFF55A9B6),
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 5),
          Text(
            "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 7),
          Text(
            "3. Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class MisiSection extends StatelessWidget {
  const MisiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Center(
            child: Text(
              'MISI',
              style: GoogleFonts.roboto(
                color: const Color(0XFF55A9B6),
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 5),
          Text(
            "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 7),
          Text(
            "3. Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class DetailSection extends StatelessWidget {
  const DetailSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Permulaan, menuju hal yang lebih baik untuk semua ',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              TextSpan(
                text: 'anggota hika bf. ',
                style: GoogleFonts.roboto(
                  color: const Color(0XFF55A9B6),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class TotalAggotaSection extends StatelessWidget {
  const TotalAggotaSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '1500',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),
              ),
              Text(
                'Anggota',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                '1200',
                style: GoogleFonts.roboto(
                  color: const Color(0XFFE86439),
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),
              ),
              Text(
                'Laki - Laki',
                style: GoogleFonts.roboto(
                  color: const Color(0XFFE86439),
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                '300',
                style: GoogleFonts.roboto(
                  color: const Color(0XFF55A9B6),
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),
              ),
              Text(
                'Perempuan',
                style: GoogleFonts.roboto(
                  color: const Color(0XFF55A9B6),
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BaganOrganisasiSection extends StatelessWidget {
  const BaganOrganisasiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/profil_bagan_organisasi.png');
  }
}

class PengurusHikaSection extends StatelessWidget {
  const PengurusHikaSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Pengurus ',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
                TextSpan(
                  text: 'Hika ',
                  style: GoogleFonts.roboto(
                    color: const Color(0XFF55A9B6),
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 15),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 30),
          child: Row(
            children: [
              PengurusCardWidget(
                image: 'assets/images/pengurus_sekretaris_image.png',
                title: 'Sekretaris',
              ),
              PengurusCardWidget(
                image: 'assets/images/pengurus_ketua_umum_image.png',
                title: 'Ketua Umum',
              ),
              PengurusCardWidget(
                image: 'assets/images/pengurus_wakil_ketua_image.png',
                title: 'Wakil Ketua',
              ),
            ],
          ),
        ),
      ],
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
