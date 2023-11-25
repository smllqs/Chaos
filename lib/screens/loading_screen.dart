import 'package:flutter/cupertino.dart';
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Chaos.',
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -10,
                  height: 1,
                  color: Colors.black),
            ),
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Let\'s get productive!',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 22,
                  child: Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.white,
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

// Text(
//                       'Get started now',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w600),
//                     ),

// TextButton(
//                   onPressed: () {},
//                   style: const ButtonStyle(
//                     backgroundColor:
//                         MaterialStatePropertyAll<Color>(Colors.black),
//                     // shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
//                     //     RoundedRectangleBorder(
//                     //         borderRadius: BorderRadius.circular(10)))
//                   ),
//                   child: const Icon(CupertinoIcons.arrow_right),
//                 )
