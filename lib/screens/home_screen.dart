import 'package:chaos/components/task_app_bar.dart';
import 'package:chaos/components/task_tile.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffCF5C36),
        title: const TaskAppBar(),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text('$month, $day',
                style: GoogleFonts.abel(
                    fontSize: 40,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w700)),
            Text('Just another day',
                style: GoogleFonts.abel(
                    fontSize: 20,
                    letterSpacing: 5,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffCF5C36))),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ListView(
                  children: const [
                    TaskTileView(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
