import 'package:flutter/cupertino.dart';

class TaskAppBar extends StatelessWidget {
  const TaskAppBar({super.key});
  // APP BAR
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(CupertinoIcons.person),
        Row(
          children: [
            Icon(CupertinoIcons.bell),
            SizedBox(width: 10),
            Icon(CupertinoIcons.ellipsis)
          ],
        )
      ],
    );
  }
}
