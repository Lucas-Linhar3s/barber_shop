
import 'package:barber_shopp/app/modules/home/views/pages/home_page.dart';
import 'package:barber_shopp/app/modules/login/views/pages/login_page.dart';
import 'package:barber_shopp/app/modules/register/views/page/register_page.dart';
import 'package:barber_shopp/app/modules/store/views/pages/store_page.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> kRoutes = {
  '/': (context) => LoginPage(),
  '/register': (context) => RegisterPage(),
  '/home': (context) => HomePage(),
  '/loja': (context) => StorePage(),
};
