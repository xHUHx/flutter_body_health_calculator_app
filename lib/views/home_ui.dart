import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_body_health_calculator_app/views/bmi_ui.dart';
import 'package:flutter_body_health_calculator_app/views/bmr_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int currentIndexStatus = 1;

  List<Widget> showbody = [
    BmiUi(),
    HomeUi(),
    BmrUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text(
          'Body Health Calculator',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndexStatus = value;
          });
        },
        currentIndex: currentIndexStatus,
        selectedItemColor: Color(0xFFDB3500),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            label: 'HOME',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'BMR'),
        ],
      ),
    );
  }
}
