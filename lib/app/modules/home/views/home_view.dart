import 'package:flutter/material.dart';
import 'package:hika_biofarma/app/modules/home/views/home_view/home_desktop.dart';
import 'package:hika_biofarma/app/modules/home/views/home_view/home_mobile.dart';
import 'package:hika_biofarma/utils/responsive.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeMobile(),
      desktop: HomeDesktop(),
    );
  }
}
