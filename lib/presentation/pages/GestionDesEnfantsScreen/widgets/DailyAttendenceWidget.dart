import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/const/colors.dart';

class DailyAttendenceWidget extends StatelessWidget {
  const DailyAttendenceWidget({super.key});

  Padding buildDayAttendence(String day, bool isPresent) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Row(
        children: [
          Text(
            '$day ',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            isPresent ? Icons.check : Icons.close,
            color: isPresent ? greenColor : maroonColor,
            size: 18,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: greyColor.withOpacity(0.1),
      ),
      child: Row(
        children: [
          Text('Présence:', style: TextStyle(color: greyColor)),
          const SizedBox(width: 10),
          buildDayAttendence('Lan.', false),
          buildDayAttendence('Mar.', true),
          buildDayAttendence('Mer.', false),
          buildDayAttendence('Jeu.', false),
          buildDayAttendence('Ven.', true),
          buildDayAttendence('Sam.', true),
          buildDayAttendence('Dim.', true),
        ],
      ),
    );
  }
}
