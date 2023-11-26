import 'package:chaos/components/task_app_bar.dart';
import 'package:chaos/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const id = '/';

  @override
  Widget build(BuildContext context) {
    final month = monthMap[DateTime.now().month];
    final day = DateTime.now().day;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const TaskAppBar(),
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Text(
            '$month, $day',
            style: GoogleFonts.abel(fontSize: 40, letterSpacing: 3),
          ),
        )
      ]),
    );
  }
}
