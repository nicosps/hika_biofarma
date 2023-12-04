import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hika_biofarma/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;
  final bool isShowTitle;
  final TextEditingController textEditingController;

  const TextFieldWidget({
    Key? key,
    required this.title,
    required this.textEditingController,
    this.isShowTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: isShowTitle == true,
          child: Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: const Color(0XFF55A9B6),
            ),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            filled: true,
            hintText: title,
            isCollapsed: true,
            contentPadding: const EdgeInsets.all(9),
            hintStyle: GoogleFonts.roboto(
              fontSize: 12,
              color: appProvider.isDark ? Colors.white : Colors.grey[900],
            ),
            fillColor: Colors.black.withOpacity(0.20),
            border: OutlineInputBorder(
              gapPadding: 0,
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.white, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              gapPadding: 0,
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.white, width: 0),
            ),
          ),
        )
      ],
    );
  }
}
