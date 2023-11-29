import 'package:get/get.dart';
import 'package:hika_biofarma/model/berita.dart';

class BeritaHikaController extends GetxController {
  List<BeritaModel> beritaHikaList = [
    BeritaModel(
      title: 'Kunjungan Disnaker',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when...",
      image: 'assets/images/berita_hika_1.png',
      date: '22 Juni 2023',
    ),
    BeritaModel(
      title: 'Kunjungan Disnaker',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when...",
      image: 'assets/images/berita_hika_2.png',
      date: '14 Agustus 2024',
    ),
    BeritaModel(
      title: 'Kunjungan Disnaker',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when...",
      image: 'assets/images/berita_hika_1.png',
      date: '22 Juni 2025',
    ),
  ];
}
