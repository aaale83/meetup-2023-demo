import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {

  final DateTime start;
  final DateTime end;
  final String room;

  const CardInfo({
    super.key,
    required this.start,
    required this.end,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black],
        ),
      ),
      width: double.infinity,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 13),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ore ${start.hour}:${start.minute.toString().padLeft(2, '0')}",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            Text(
              room,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
