import 'package:flutter/material.dart';

class CustomListTileDrawer extends StatefulWidget {
  const CustomListTileDrawer({super.key});

  @override
  State<CustomListTileDrawer> createState() => _CustomListTileDrawerState();
}

class _CustomListTileDrawerState extends State<CustomListTileDrawer> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Home'),
          enabled: true,
          leading: Icon(Icons.home_outlined),
          tileColor: selected == 0 ? Color(0xFFDAEC76) : null,
          onTap: () {
            setState(() {
              selected = 0;
            });
          },
        ),
        Divider(),
        ListTile(
          title: Text('Agenda'),
          enabled: true,
          leading: Icon(Icons.calendar_month_outlined),
          tileColor: selected == 1 ? Color(0xFFDAEC76) : null,
          onTap: () {
            setState(() {
              selected = 1;
            });
            Navigator.pushNamed(context, '/loja');
          },
        ),
        Divider(),
        ListTile(
          title: Text('Clientes'),
          enabled: true,
          leading: Icon(Icons.people_alt_outlined),
          tileColor: selected == 2 ? Color(0xFFDAEC76) : null,
          onTap: () {
            setState(() {
              selected = 2;
            });
          },
        ),
        Divider(),
        ListTile(
          title: Text('Finanças'),
          enabled: true,
          leading: Icon(Icons.monetization_on_outlined),
          tileColor: selected == 3 ? Color(0xFFDAEC76) : null,
          onTap: () {
            setState(() {
              selected = 3;
            });
          },
        ),
        Divider(),
        ListTile(
          title: Text('Produtos'),
          enabled: true,
          leading: Icon(Icons.store_outlined),
          tileColor: selected == 4 ? Color(0xFFDAEC76) : null,
          onTap: () {
            setState(() {
              selected = 4;
            });
          },
        ),
        Divider(),
        ListTile(
          title: Text('Sair'),
          enabled: true,
          leading: Icon(Icons.exit_to_app_outlined),
          tileColor: selected == 5 ? Color(0xFFDAEC76) : null,
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => true);
          },
        ),
      ],
    );
  }
}
