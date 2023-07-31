import 'package:barber_shopp/app/modules/home/views/pages/home_page_desktop.dart';
import 'package:barber_shopp/app/modules/home/views/pages/home_page_mobile.dart';
import 'package:barber_shopp/app/modules/home/views/widgets/navigator_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth > 850
            ? HomePageDesktop()
            : HomePageMobile();
      },
    );
  }
}
