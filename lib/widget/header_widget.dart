import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hika_biofarma/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final dynamic onTap;
  final bool isShowDetail;

  const HeaderWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.isShowDetail = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 56,
                child: Divider(
                  height: 0,
                  thickness: 1,
                  color: Color(0XFF55A9B6),
                ),
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: GoogleFonts.roboto(
                        color: appProvider.isDark
                            ? Colors.white
                            : Colors.grey[900],
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: subtitle,
                      style: GoogleFonts.roboto(
                        color: const Color(0XFF55A9B6),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = onTap,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Visibility(
            visible: isShowDetail == true,
            child: MaterialButton(
              onPressed: onTap,
              child: Text(
                'Selengkapnya',
                style: GoogleFonts.roboto(
                  color: const Color(0XFF55A9B6),
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
