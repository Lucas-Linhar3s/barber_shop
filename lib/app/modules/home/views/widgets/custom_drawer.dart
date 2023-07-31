import 'package:barber_shopp/app/modules/home/views/widgets/custom_list_tile_drawer.dart';
import 'package:barber_shopp/app/modules/home/views/widgets/navigator_bar.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      borderOnForeground: false,
      child: Container(
        width: 300,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            DrawerHeader(
                curve: Curves.linear,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 40,
                      minRadius: 20,
                      child: Icon(Icons.person_outline),
                    ),
                    Text('Lucas Linhares da Silva'),
                    Text('linhar3s77@gmail.com')
                  ],
                )),
            CustomListTileDrawer()
          ],
        ),
      ),
    );
  }
}
