import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/presentation/pages/EmployeeScreen/employee_screen.dart';
import 'package:test_flutter_bloc_project/presentation/pages/EmployeeScreen/widgets/HoraireTabScreen.dart';

class InformationWidget extends StatefulWidget {
  const InformationWidget({super.key});

  @override
  State<InformationWidget> createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 7, vsync: this); // 6 Tabs as seen in the image
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          padding: EdgeInsets.zero,
          indicatorSize: TabBarIndicatorSize.label,
          dividerColor: Colors.grey.withOpacity(0.2),
          dividerHeight: 3,
          isScrollable: true,
          labelColor: Colors.black,
          indicatorColor: const Color(0xFF89CAFC),
          tabAlignment: TabAlignment.start,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          tabs: const [
            Tab(text: "Informations du profil"),
            Tab(text: "Horaire"), // Special tab for the current image
            Tab(text: "Embauche"),
            Tab(text: "Groupe"),
            Tab(text: "Transfert"),
            Tab(text: "Réinitialiser le mot de passe"),
            Tab(text: "Enfant(s)"),
          ],
        ),
        SizedBox(
          height: 550,
          child: TabBarView(
            controller: _tabController,
            children: const [
              Center(child: Text('Informations du profil')),
              HoraireTab(),
              Center(child: Text('Embauche')),
              Center(child: Text('Groupe')),
              Center(child: Text('Transfert')),
              Center(child: Text('Réinitialiser le mot de passe')),
              Center(child: Text('Enfant(s)')),
            ],
          ),
        ),
      ],
    );
  }
}
