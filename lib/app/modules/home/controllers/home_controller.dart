import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:hika_biofarma/model/berita.dart';
import 'package:hika_biofarma/model/info_sosial.dart';

class HomeController extends GetxController {
  int current = 0;
  final carouselController = CarouselController();

  List<InfoSosialModel> infoSosialList = [
    InfoSosialModel(
      title: 'Kunjungan ke Rumah Duka',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when...",
      image: 'assets/images/info_sosial_1.png',
      date: '28 Agustus 2023',
    ),
    InfoSosialModel(
      title: 'Kunjungan ke Rumah Duka',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when...",
      image: 'assets/images/info_sosial_2.png',
      date: '28 Agustus 2024',
    ),
    InfoSosialModel(
      title: 'Kunjungan ke Rumah Duka',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when...",
      image: 'assets/images/info_sosial_1.png',
      date: '28 Agustus 2025',
    ),
  ];

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

  void onUpdateCarousel(int index) {
    current = index;
    update();
  }
}
