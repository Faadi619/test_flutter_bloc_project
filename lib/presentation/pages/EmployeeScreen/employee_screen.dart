import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/presentation/pages/EmployeeScreen/widgets/EmployeeInformationWidget.dart';
import 'package:test_flutter_bloc_project/presentation/pages/EmployeeScreen/widgets/PersonalDetailWidget.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  final List<String> addEmployeeList = [
    'Employee 1',
    'Employee 2',
    'Employee 3'
  ];

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
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.child_care_rounded,
                    size: 24,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Gestion garderie / Employés',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Spacing between rows

              // Second Row: Text + TextField + Dropdown
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text
                  const Text(
                    'Gestion des employés',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                      width: 20), // Spacing between text and TextField

                  // TextField

                  Row(
                    children: [
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.search, size: 24),
                            hintText: 'Rechercher par nom...',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                          width: 20), // Spacing between TextField and Dropdown

                      // Dropdown with Icon
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          // Handle different options here
                          if (kDebugMode) {
                            print("Selected: $value");
                          }
                        },
                        tooltip: 'Add Employee',
                        offset: const Offset(0, 55),
                        color: const Color(0xff8ACAFA),
                        constraints: const BoxConstraints(
                          minWidth: 330,
                          minHeight: 50,
                        ),
                        itemBuilder: (BuildContext context) {
                          return addEmployeeList.map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
                        child: Container(
                          width: 330,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xff8ACAFA),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Row(
                            children: [
                              SizedBox(width: 10),
                              SizedBox(
                                width: 250,
                                height: 50,
                                child: Row(
                                  children: [
                                    Icon(Icons.person_add_alt_rounded),
                                    SizedBox(width: 15),
                                    Text(
                                      'Ajouter un employé',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(color: Colors.white),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Center(
                                  child: Icon(Icons.keyboard_arrow_down),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.90,
                width: MediaQuery.of(context).size.width * 0.80,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  children: [
                    PersonDetailWidget(),
                    SizedBox(height: 20),
                    InformationWidget(),
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
