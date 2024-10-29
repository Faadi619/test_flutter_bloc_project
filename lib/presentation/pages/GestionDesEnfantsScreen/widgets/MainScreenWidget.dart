import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/const/assets.dart';
import 'package:test_flutter_bloc_project/const/colors.dart';

class MainHeaderWidget extends StatelessWidget {
  final List<String> addEmployeeList = [
    'Employee 1',
    'Employee 2',
    'Employee 3'
  ];

  MainHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Text
        const Text(
          'Gestion des enfants',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 20), // Spacing between text and TextField

        // TextField

        Row(
          children: [
            GestureDetector(
              onTap: () {
                //TODO: Add function here.
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: maroonColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Ajouter un frère ou une sæur',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20), // Spacing between TextField and Dropdown

            // // Dropdown with Icon
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
              itemBuilder: (BuildContext context) {
                return addEmployeeList.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Text(choice),
                    ),
                  );
                }).toList();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: blackColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: whiteColor,
                      backgroundImage: AssetImage(placeHolderImage),
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Patrick Lagassé',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              //Replace them by the real icons
                              Icon(
                                Icons.medical_information,
                                size: 16,
                                color: blackColor.withOpacity(0.5),
                              ),
                              Icon(
                                Icons.favorite,
                                size: 16,
                                color: blackColor.withOpacity(0.5),
                              ),
                              Icon(
                                Icons.energy_savings_leaf_rounded,
                                size: 16,
                                color: blackColor.withOpacity(0.5),
                              ),
                              Icon(
                                Icons.medical_information,
                                size: 16,
                                color: blackColor.withOpacity(0.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Center(
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
