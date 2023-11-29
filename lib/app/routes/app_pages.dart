import 'package:get/get.dart';

import '../modules/berita_hika/bindings/berita_hika_binding.dart';
import '../modules/berita_hika/views/berita_hika_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/info_sosial/bindings/info_sosial_binding.dart';
import '../modules/info_sosial/views/info_sosial_view.dart';
import '../modules/pengurus/bindings/pengurus_binding.dart';
import '../modules/pengurus/views/pengurus_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.INFO_SOSIAL,
      page: () => const InfoSosialView(),
      binding: InfoSosialBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PENGURUS,
      page: () => const PengurusView(),
      binding: PengurusBinding(),
    ),
    GetPage(
      name: _Paths.BERITA_HIKA,
      page: () => const BeritaHikaView(),
      binding: BeritaHikaBinding(),
    ),
  ];
}
