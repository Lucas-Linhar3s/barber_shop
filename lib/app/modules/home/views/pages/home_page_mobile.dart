import 'package:barber_shopp/app/modules/home/views/widgets/navigator_bar.dart';
import 'package:flutter/material.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Agenda',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoSlab',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF595959)),
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
                child: CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now(),
                  onDateChanged: (value) {},
                ),
              ),
            ),
            Expanded(
              child:
                  Container(color: Colors.blue, child: Text('Agenda do dia')),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigatorBar(),
    );
  }
}
