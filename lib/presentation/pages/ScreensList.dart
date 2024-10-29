import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/presentation/pages/EmployeeScreen/employee_screen.dart';
import 'package:test_flutter_bloc_project/presentation/pages/GestionDesEnfantsScreen/GestionDesEnfants.dart';

enum ScreenEnum {
  tableau,
  messages,
  agenda,
  gestionDesEnfants,
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
  ScreenEnum.tableau: const Center(child: Text('Tableau Screen')),
  ScreenEnum.messages: const Center(child: Text('Messages Screen')),
  ScreenEnum.agenda: const Center(child: Text('Agenda Screen')),
  ScreenEnum.gestionDesEnfants: const GestionDesEnfants(),
  ScreenEnum.menu: const Center(child: Text('Menu Screen')),
  ScreenEnum.employes: const EmployeeScreen(),
  ScreenEnum.parents: const Center(child: Text('Parents Screen')),
  ScreenEnum.documents: const Center(child: Text('Documents Screen')),
  ScreenEnum.facturation: const Center(child: Text('Facturation Screen')),
  ScreenEnum.none: const GestionDesEnfants(),
};
