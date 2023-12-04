import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hika_biofarma/provider/theme_provider.dart';
import 'package:hika_biofarma/widget/footer_widget.dart';
import 'package:hika_biofarma/widget/text_field_widget.dart';
import 'package:provider/provider.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
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
                    'Form\nregistrasi.',
                    style: GoogleFonts.roboto(
                      color: const Color(0XFF55A9B6),
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 38),
                  const DataPribadiSection(),
                  const SizedBox(height: 58),
                  const DataPekerjaanSection(),
                  const SizedBox(height: 46),
                  const ConfirmationAndSubmitSection(),
                  const SizedBox(height: 59),
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

class DataPribadiSection extends StatelessWidget {
  const DataPribadiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Data Pribadi',
          style: GoogleFonts.roboto(
            color: const Color(0XFFEF8318),
            fontWeight: FontWeight.w400,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 18),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'Nama',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'Tempat/Tanggal Lahir',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'Jenis Kelamin',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'Alamat Domisili',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'No Telepon/HP',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'E-mail Pribadi',
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

class DataPekerjaanSection extends StatelessWidget {
  const DataPekerjaanSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Data Pekerjaan',
          style: GoogleFonts.roboto(
            color: const Color(0XFFEF8318),
            fontWeight: FontWeight.w400,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 18),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'NIK (8 Digit)',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'Unit Kerja',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'Nomor Ekstensi',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'E-mail Kantor',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'Hobby',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'Komunitas',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'Pengalaman Organisasi',
        ),
        const SizedBox(height: 12),
        TextFieldWidget(
          textEditingController: TextEditingController(),
          title: 'Serikat Pekerja selain Hika BF',
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: TextFieldWidget(
                textEditingController: TextEditingController(),
                title: 'Pilih Foto',
              ),
            ),
            const SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'Upload',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: const Color(0XFF55A9B6),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class ConfirmationAndSubmitSection extends StatelessWidget {
  const ConfirmationAndSubmitSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        Text(
          'Dengan ini mengajukan permohonan untuk dapat menjadi anggota Himpunan Karyawan Bio Farma (Hika-BF) dan memberikan kuasa pada HIKA-BF untuk melakukan pemotongan atas pendapatan yang saya terima dari PT Biofarma (Persero) untuk pembayaran iuran wajib organisasi sesuai denga ketentuan yang berlaku.',
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            letterSpacing: 0.25,
            height: 1.5,
            color: appProvider.isDark ? Colors.white : Colors.grey[900],
          ),
        ),
        const SizedBox(height: 39),
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
                'Upload',
                style: GoogleFonts.roboto(fontSize: 12),
              ),
            ),
          ),
        )
      ],
    );
  }
}
