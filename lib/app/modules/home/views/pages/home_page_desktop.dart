import 'package:barber_shopp/app/modules/home/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      drawer: screenWidth < 1200 ? CustomDrawer() : null,
      appBar: screenWidth < 1200 ? AppBar() : null,
      body: Row(
        children: [
          MediaQuery.sizeOf(context).width > 1200
              ? CustomDrawer()
              : Container(),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Teste')],
          ))
        ],
      ),
    );
  }
}
