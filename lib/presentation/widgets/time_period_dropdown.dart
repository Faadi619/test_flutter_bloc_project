import 'package:flutter/material.dart';

class TimePeriodDropdown extends StatefulWidget {
  const TimePeriodDropdown({super.key});

  @override
  _TimePeriodDropdownState createState() => _TimePeriodDropdownState();
}

class _TimePeriodDropdownState extends State<TimePeriodDropdown> {
  String selectedPeriod = 'Toute la journée';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedPeriod,
      onChanged: (String? newValue) {
        setState(() {
          selectedPeriod = newValue!;
        });
      },
      items: <String>[
        'Toute la journée',
        'Matin',
        'Midi',
        'Après-midi',
        'Soir',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
