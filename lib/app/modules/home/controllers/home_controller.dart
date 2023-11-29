import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:hika_biofarma/model/berita.dart';
import 'package:hika_biofarma/model/info_sosial.dart';
import 'package:hika_biofarma/utils/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _getThemeStatus();
  }

  int current = 0;
  final carouselController = CarouselController();
  RxBool isChangeDarkMode = false.obs;

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

  RxBool isLightTheme = false.obs;

  Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  saveThemeStatus() async {
    SharedPreferences pref = await prefs;
    pref.setBool('theme', isLightTheme.value);
  }

  _getThemeStatus() async {
    var isLight = prefs.then((SharedPreferences prefs) {
      return prefs.getBool('theme') ?? true;
    }).obs;
    isLightTheme.value = (await isLight.value);

    Get.changeTheme(
      isLightTheme.value ? ThemeList.darkTheme : ThemeList.lightTheme,
    );
  }
}
