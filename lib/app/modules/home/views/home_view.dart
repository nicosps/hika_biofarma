import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hika_biofarma/app/modules/berita_hika/views/berita_hika_detail_view.dart';
import 'package:hika_biofarma/app/modules/berita_hika/views/berita_hika_view.dart';
import 'package:hika_biofarma/app/modules/info_sosial/views/info_sosial_detail_view.dart';
import 'package:hika_biofarma/app/modules/info_sosial/views/info_sosial_view.dart';
import 'package:hika_biofarma/app/modules/register/views/register_view.dart';
import 'package:hika_biofarma/app/routes/app_pages.dart';
import 'package:hika_biofarma/provider/theme_provider.dart';
import 'package:hika_biofarma/widget/footer_widget.dart';
import 'package:hika_biofarma/widget/header_widget.dart';
import 'package:provider/provider.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: appProvider.isDark ? Colors.grey[900] : Colors.white,
      appBar: AppBar(
        backgroundColor: appProvider.isDark ? Colors.grey[900] : Colors.white,
        elevation: 0,
        title: Image.asset('assets/images/hika_logo.png'),
        actions: [
          Builder(builder: (ctx) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: appProvider.isDark ? Colors.white : Colors.grey[900],
              ),
              onPressed: () {
                Scaffold.of(ctx).openEndDrawer();
              },
              tooltip: MaterialLocalizations.of(ctx).openAppDrawerTooltip,
            );
          })
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: appProvider.isDark ? Colors.grey[900] : Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 50),
            CircleAvatar(
              backgroundColor:
                  appProvider.isDark ? Colors.white : Colors.grey[900],
              maxRadius: 70,
            ),
            const SizedBox(height: 20),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: Text(
                'Home',
                style: GoogleFonts.roboto(
                  color: appProvider.isDark ? Colors.white : Colors.grey[900],
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: Icon(
                Icons.home_work,
                color: appProvider.isDark ? Colors.white : Colors.grey[900],
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: Text(
                'Profile',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: appProvider.isDark ? Colors.white : Colors.grey[900],
                ),
              ),
              leading: Icon(
                Icons.person_2,
                color: appProvider.isDark ? Colors.white : Colors.grey[900],
              ),
              onTap: () {
                Get.toNamed(Routes.PROFILE);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: Text(
                'Program',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: appProvider.isDark ? Colors.white : Colors.grey[900],
                ),
              ),
              leading: Icon(
                Icons.lightbulb_circle,
                color: appProvider.isDark ? Colors.white : Colors.grey[900],
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: Text(
                'Report',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: appProvider.isDark ? Colors.white : Colors.grey[900],
                ),
              ),
              leading: Icon(
                Icons.article,
                color: appProvider.isDark ? Colors.white : Colors.grey[900],
              ),
              onTap: () {
                Get.toNamed(Routes.PENGURUS);
              },
            ),
            SwitchListTile(
              value: appProvider.isDark,
              onChanged: (val) {
                appProvider.setTheme(val ? ThemeMode.dark : ThemeMode.light);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: Text(
                'Dark Mode',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: appProvider.isDark ? Colors.white : Colors.grey[900],
                ),
              ),
              thumbColor: MaterialStateProperty.all(
                const Color(0XFF55A9B6),
              ),
              secondary: Icon(
                Icons.dark_mode,
                color: appProvider.isDark ? Colors.white : Colors.grey[900],
              ),
            ),
            Visibility(
              visible: kIsWeb != true,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 30),
                      title: Text(
                        'Keluar Aplikasi',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: appProvider.isDark
                              ? Colors.white
                              : Colors.grey[900],
                        ),
                      ),
                      leading: Icon(
                        Icons.exit_to_app,
                        color: appProvider.isDark
                            ? Colors.white
                            : Colors.grey[900],
                      ),
                      onTap: () => SystemNavigator.pop(),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 13),
              child: WelcomeTextSection(),
            ),
            CarouselSection(),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 21, 0, 24),
              child: SubHeaderSection(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
              child: InfoSosialSection(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
              child: BeritaHikaSection(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
              child: PengurusSection(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 41),
              child: KotakAspirasiSection(),
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}

class WelcomeTextSection extends StatelessWidget {
  const WelcomeTextSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);

    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Join ',
              style: GoogleFonts.roboto(
                color: const Color(0XFF55A9B6),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Get.to(const RegisterView()),
            ),
            TextSpan(
              text: ' HIKA BF sekarang juga. ',
              style: GoogleFonts.roboto(
                color: appProvider.isDark ? Colors.white : Colors.grey[900],
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselSection extends GetView<HomeController> {
  const CarouselSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List imgList = [
      'assets/images/homepage_image.png',
      'assets/images/homepage_image.png',
      'assets/images/homepage_image.png'
    ];

    final List<Widget> imageSliders = imgList
        .map(
          (item) => Stack(
            children: <Widget>[
              Image.asset(
                item,
                fit: BoxFit.fitWidth,
                width: Get.width,
              ),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: const EdgeInsets.only(right: 22),
                child: Text(
                  'Rapat Kerja Himpunan Karyawan PT Bio Farma',
                  style: GoogleFonts.roboto(
                    fontSize: 45,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        )
        .toList();

    return GetBuilder<HomeController>(
      builder: (ctx) {
        return Stack(
          children: [
            CarouselSlider(
              items: imageSliders,
              carouselController: controller.carouselController,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1 / 1.2,
                disableCenter: true,
                enlargeCenterPage: false,
                viewportFraction: 1,
                enlargeFactor: 1,
                onPageChanged: (index, reason) {
                  controller.onUpdateCarousel(index);
                },
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => controller.carouselController.animateToPage(
                      entry.key,
                    ),
                    child: Container(
                      width: 7.0,
                      height: 6.55,
                      margin: const EdgeInsets.symmetric(
                        vertical: 19,
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.current == entry.key
                            ? const Color(0xFF55A9B6)
                            : const Color(0XFFD9D9D9),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}

class SubHeaderSection extends StatelessWidget {
  const SubHeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    'Permulaan, menuju hal yang lebih baik untuk semua anggota hika bf ',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: appProvider.isDark ? Colors.white : Colors.grey[900],
                ),
              ),
              TextSpan(
                text: 'Join. ',
                style: GoogleFonts.roboto(
                  color: const Color(0XFF55A9B6),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Get.to(const RegisterView()),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class InfoSosialSection extends StatelessWidget {
  const InfoSosialSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final appProvider = Provider.of<ThemeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(
          title: 'Info ',
          subtitle: 'Sosial. ',
          onTap: () => Get.to(const InfoSosialView()),
          isShowDetail: true,
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: List.generate(
              controller.infoSosialList.length,
              (index) {
                var infoSosial = controller.infoSosialList[index];
                return Padding(
                  padding: EdgeInsets.only(
                      right: index == controller.infoSosialList.length - 1
                          ? 0
                          : 20),
                  child: MaterialButton(
                    onPressed: () => Get.to(
                      InfoSosialDetailView(data: infoSosial),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          infoSosial.image,
                          width: 200,
                          height: 180,
                          fit: BoxFit.fitWidth,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          infoSosial.date,
                          style: GoogleFonts.roboto(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: appProvider.isDark
                                ? Colors.white
                                : Colors.grey[900],
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 200,
                          child: Text(
                            infoSosial.title,
                            style: GoogleFonts.roboto(
                              fontSize: 22,
                              color: const Color(0XFF55A9B6),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: 200,
                          child: Text(
                            infoSosial.description,
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: const Color(0XFF5E5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class BeritaHikaSection extends StatelessWidget {
  const BeritaHikaSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);
    final controller = Get.put(HomeController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(
          title: 'Berita ',
          subtitle: 'hika. ',
          onTap: () => Get.to(const BeritaHikaView()),
          isShowDetail: true,
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: List.generate(
              controller.beritaHikaList.length,
              (index) {
                var infoSosial = controller.beritaHikaList[index];
                return Padding(
                  padding: EdgeInsets.only(
                      right: index == controller.beritaHikaList.length - 1
                          ? 0
                          : 20),
                  child: MaterialButton(
                    onPressed: () => Get.to(
                      BeritaHikaDetailView(data: infoSosial),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          infoSosial.image,
                          width: 200,
                          height: 180,
                          fit: BoxFit.fitWidth,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          infoSosial.date,
                          style: GoogleFonts.roboto(
                            color: appProvider.isDark
                                ? Colors.white
                                : Colors.grey[900],
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          infoSosial.title,
                          style: GoogleFonts.roboto(
                            fontSize: 22,
                            color: const Color(0XFF55A9B6),
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: 200,
                          child: Text(
                            infoSosial.description,
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: const Color(0XFF5E5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class PengurusSection extends StatelessWidget {
  const PengurusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderWidget(
          title: 'Pengurus ',
          subtitle: 'hika bf. ',
        ),
        const SizedBox(height: 20),
        Stack(
          children: [
            Image.asset(
              'assets/images/pengurus_cover_image.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 4, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    appProvider.isDark
                        ? 'assets/images/pengurus/sekretaris_black.png'
                        : 'assets/images/pengurus/sekretaris_white.png',
                  ),
                  Image.asset(
                    appProvider.isDark
                        ? 'assets/images/pengurus/ketua_umum_black.png'
                        : 'assets/images/pengurus/ketua_umum_white.png',
                  ),
                  Image.asset(
                    appProvider.isDark
                        ? 'assets/images/pengurus/wakil_ketua_black.png'
                        : 'assets/images/pengurus/wakil_ketua_white.png',
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class KotakAspirasiSection extends StatelessWidget {
  const KotakAspirasiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderWidget(title: 'Kotak ', subtitle: 'aspirasi. '),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0XFF55A9B6).withOpacity(0.05),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 8,
                      ),
                      height: 100,
                      child: Text(
                        'Sampaikan aspirasi Anda',
                        style: GoogleFonts.roboto(
                          fontSize: 10,
                          color: const Color(0XFF5E5E5E),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 26,
                        width: 124,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0XFFEF8318),
                        ),
                        child: Center(
                          child: Text(
                            'Kirim',
                            style: GoogleFonts.roboto(fontSize: 12),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Image.asset('assets/images/kotak_aspirasi_image.png')
            ],
          ),
        ),
      ],
    );
  }
}
