import 'package:chaos/constants.dart';
import 'package:flutter/cupertino.dart';

class TaskAppBar extends StatelessWidget {
  const TaskAppBar({super.key});
  // APP BAR
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(CupertinoIcons.person),
          SizedBox(
            width: 0,
          ),
          kChaos,
          Row(
            children: [
              Icon(CupertinoIcons.bell),
              SizedBox(width: 20),
              Icon(CupertinoIcons.ellipsis)
            ],
          )
        ],
      ),
    );
  }
}
