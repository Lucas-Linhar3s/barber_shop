import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatefulWidget {
  const CustomNavigatorBar({super.key});

  @override
  State<CustomNavigatorBar> createState() => _CustomNavigatorBarState();
}

class _CustomNavigatorBarState extends State<CustomNavigatorBar> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(
          // onPressed: () {
          //   setState(() {
          //     selected = 0;
          //   });
          // },
          label: 'Agenda',
          icon: Icon(Icons.calendar_month_outlined),
          // isSelected: true,
          // style: ButtonStyle(
          //   backgroundColor: selected == 0
          //       ? MaterialStatePropertyAll(Color(0xFFDAEC76))
          //       : null,
        ),
        NavigationDestination(
          // onPressed: () {
          //   setState(() {
          //     selected = 1;
          //   });
          //   Navigator.of(context, rootNavigator: false).pushNamed('/loja');
          // },
          icon: Icon(Icons.shopping_bag_outlined),
          label: 'Produtos',
          // style: ButtonStyle(
          //   backgroundColor: selected == 1
          //       ? MaterialStatePropertyAll(Color(0xFFDAEC76))
          //       : null,
        ),
        IconButton(
            style: ButtonStyle(
              backgroundColor: selected == 2
                  ? MaterialStatePropertyAll(Color(0xFFDAEC76))
                  : null,
            ),
            onPressed: () {
              setState(() {
                selected = 2;
              });
            },
            icon: Icon(Icons.people_alt_outlined)),
        IconButton(
            style: ButtonStyle(
              backgroundColor: selected == 3
                  ? MaterialStatePropertyAll(Color(0xFFDAEC76))
                  : null,
            ),
            onPressed: () {
              setState(() {
                selected = 3;
              });
            },
            icon: Icon(Icons.monetization_on_outlined)),
        IconButton(
            style: ButtonStyle(
              backgroundColor: selected == 4
                  ? MaterialStatePropertyAll(Color(0xFFDAEC76))
                  : null,
            ),
            onPressed: () {
              setState(() {
                selected = 4;
              });
            },
            icon: Icon(Icons.settings_outlined))
      ],
      selectedIndex: selected,
      onDestinationSelected: (value) {
        setState(() {
          selected = value;
        });
      },
    );
  }
}
