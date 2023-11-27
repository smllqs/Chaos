import 'package:chaos/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskTileView extends StatelessWidget {
  const TaskTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          boxShadow: CupertinoContextMenu.kEndBoxShadow,
          color: Color(0xffffffff),
          border: Border(left: BorderSide(width: 1, color: )),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(40)),
            child: Text(
              'High',
              style: GoogleFonts.openSans(),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Create stunning visuals for a social media campaign',
            style: GoogleFonts.openSans(
                fontSize: 20,
                height: 1,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
                decorationThickness: 5),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(CupertinoIcons.calendar_today),
              const SizedBox(
                width: 5,
              ),
              Text(
                month!,
                style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const CircleAvatar(
            backgroundColor: Colors.black45,
            child: Icon(CupertinoIcons.person),
          )
        ],
      ),
    );
  }
}
