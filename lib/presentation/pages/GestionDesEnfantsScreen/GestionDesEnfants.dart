import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/const/colors.dart';
import 'package:test_flutter_bloc_project/presentation/pages/GestionDesEnfantsScreen/widgets/DailyAttendenceWidget.dart';
import 'package:test_flutter_bloc_project/presentation/pages/GestionDesEnfantsScreen/widgets/GuadianNumberCardWidget.dart';
import 'package:test_flutter_bloc_project/presentation/pages/GestionDesEnfantsScreen/widgets/MainScreenWidget.dart';
import 'package:test_flutter_bloc_project/presentation/pages/GestionDesEnfantsScreen/widgets/MedicalDetailsWidget.dart';
import 'package:test_flutter_bloc_project/presentation/pages/GestionDesEnfantsScreen/widgets/PersonalDetailScreen.dart';

class GestionDesEnfants extends StatefulWidget {
  const GestionDesEnfants({super.key});

  @override
  State<GestionDesEnfants> createState() => _GestionDesEnfantsState();
}

class _GestionDesEnfantsState extends State<GestionDesEnfants> {
  // Dummy list of actions for the right-side dropdown

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFAE7),
      height: MediaQuery.of(context).size.height - 60,
      width: MediaQuery.of(context).size.width * 0.82,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns to the left
            children: [
              // First Row: Icon + Text
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.group_sharp,
                    size: 20,
                    color: blackColor.withOpacity(0.6),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Enfants / Gestion des enfants',
                    style: TextStyle(
                      fontSize: 14,
                      color: greyColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Spacing between rows

              // Second Row: Text + TextField + Dropdown
              MainHeaderWidget(),
              const SizedBox(height: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PersonalDetailScreen(),
                    const SizedBox(height: 20),
                    const MedicalDetailsWidget(),
                    const SizedBox(height: 10),
                    const DailyAttendenceWidget(),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GuardianNumberCardWidget(
                          guardianRelation: 'Mère',
                          guardianName: 'Melissa Template',
                          email: 'melissatemplate@gmail.com',
                          telephone: '514-123-4567',
                        ),
                        GuardianNumberCardWidget(
                          guardianRelation: 'Père',
                          guardianName: 'Nicolas Template',
                          email: 'nicolastemplate@gmail.com',
                          telephone: '514-123-4567',
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'En cas d\'urgence contacter la mère',
                      style: TextStyle(
                        color: maroonColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
