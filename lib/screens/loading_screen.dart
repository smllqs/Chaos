import 'package:chaos/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});
  static const id = '/loading';

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Chaos.',
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -10,
                  height: 1,
                  color: Color(0xff010b13)),
            ),
            const SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll<Color>(
                          Color(0xff010b13)),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Get started now',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
