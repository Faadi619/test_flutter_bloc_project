import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/presentation/pages/EmployeeScreen/employee_screen.dart';

enum ScreenEnum {
  tableau,
  messages,
  agenda,
  //enfants list here.
  //calendrier list here.
  menu,
  facturation,
  employes,
  parents,
  documents,
  //outils list here.
  none, // Default or fallback value
}

final Map<ScreenEnum, Widget> screenList = {
  ScreenEnum.employes: EmployeeScreen(),
  ScreenEnum.parents: const Center(child: Text('Parents Screen')),
  ScreenEnum.documents: const Center(child: Text('Documents Screen')),
  ScreenEnum.menu: const Center(child: Text('Menu Screen')),
  ScreenEnum.facturation: const Center(child: Text('Facturation Screen')),
  ScreenEnum.tableau: const Center(child: Text('Tableau Screen')),
  ScreenEnum.messages: const Center(child: Text('Messages Screen')),
  ScreenEnum.agenda: const Center(child: Text('Agenda Screen')),
  ScreenEnum.none: EmployeeScreen(),
};
