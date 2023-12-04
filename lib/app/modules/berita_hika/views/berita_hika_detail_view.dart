import 'package:comment_tree/comment_tree.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hika_biofarma/app/modules/berita_hika/controllers/berita_hika_controller.dart';
import 'package:hika_biofarma/model/berita.dart';
import 'package:hika_biofarma/provider/theme_provider.dart';
import 'package:hika_biofarma/widget/footer_widget.dart';
import 'package:hika_biofarma/widget/text_field_widget.dart';
import 'package:provider/provider.dart';

class BeritaHikaDetailView extends StatelessWidget {
  final BeritaModel data;

  const BeritaHikaDetailView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: appProvider.isDark ? Colors.grey[900] : Colors.white,
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
                  BeritaDetailSection(data: data),
                  const SizedBox(height: 30),
                  const BeritaLainSection(),
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

class BeritaDetailSection extends StatelessWidget {
  final BeritaModel data;

  const BeritaDetailSection({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            data.image,
            width: Get.width,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 5),
          Text(
            'kiri ke kanan : Heri Hoerudin, Asep Komarudin (Biro Sosial) ',
            style: GoogleFonts.roboto(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: const Color(0XFF5E5E5E),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            data.title,
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: const Color(0XFF55A9B6),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            data.date,
            style: GoogleFonts.roboto(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: const Color(0XFF5E5E5E),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            data.description,
            style: GoogleFonts.roboto(
              fontSize: 12,
              height: 1.5,
              color: appProvider.isDark ? Colors.white : Colors.grey[900],
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          const CommentSection(),
        ],
      ),
    );
  }
}

class CommentSection extends StatelessWidget {
  const CommentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: CircleAvatar(minRadius: 15),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextFieldWidget(
                isShowTitle: false,
                title: 'komentar',
                textEditingController: TextEditingController(),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        CommentTreeWidget<Comment, Comment>(
          Comment(
            avatar: 'Ilyas Rasyid',
            userName: 'Ilyas Rasyid',
            content: 'Semoga amal ibadahnya diterima di sisi Allah SWT ',
          ),
          [
            Comment(
              avatar: 'null',
              userName: 'Agung Jasa Muttaqien U',
              content: 'AAAMMIINNN',
            ),
          ],
          treeThemeData: const TreeThemeData(
            lineColor: Colors.transparent,
            lineWidth: 0,
          ),
          avatarRoot: (context, data) => const PreferredSize(
            preferredSize: Size.fromRadius(18),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/avatar_2.png'),
            ),
          ),
          avatarChild: (context, data) => const PreferredSize(
            preferredSize: Size.fromRadius(12),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/avatar_1.png'),
            ),
          ),
          contentChild: (context, data) {
            return CommentBoxWidget(
              content: data.content.toString(),
              userName: data.userName.toString(),
            );
          },
          contentRoot: (context, data) {
            return CommentBoxWidget(
              content: data.content.toString(),
              userName: data.userName.toString(),
            );
          },
        ),
      ],
    );
  }
}

class CommentBoxWidget extends StatelessWidget {
  final String userName;
  final String content;

  const CommentBoxWidget({
    Key? key,
    this.userName = "",
    this.content = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            userName.toString(),
            style: GoogleFonts.roboto(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              height: 0.5,
              color: appProvider.isDark ? Colors.white : Colors.grey[900],
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          Text(
            content.toString(),
            style: GoogleFonts.roboto(
              fontSize: 12,
              color: appProvider.isDark ? Colors.white : Colors.grey[900],
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class BeritaLainSection extends StatelessWidget {
  const BeritaLainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BeritaHikaController());
    final appProvider = Provider.of<ThemeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Berita ',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: appProvider.isDark ? Colors.white : Colors.grey[900],
                ),
              ),
              TextSpan(
                text: 'Lainnya ',
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
        const SizedBox(height: 15),
        ListView.builder(
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
        ),
      ],
    );
  }
}
