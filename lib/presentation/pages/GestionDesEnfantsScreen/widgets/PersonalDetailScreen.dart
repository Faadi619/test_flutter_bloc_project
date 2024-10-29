import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/const/assets.dart';
import 'package:test_flutter_bloc_project/const/colors.dart';

class PersonalDetailScreen extends StatelessWidget {
  const PersonalDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: whiteColor,
          backgroundImage: AssetImage(placeHolderImage),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Patrick Lagassé',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  color: lightYellowColor,
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 7,
                  ),
                  child: Row(
                    children: [
                      //Replace them by the real icons
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Icon(
                          Icons.medical_information,
                          size: 16,
                          color: blackColor.withOpacity(0.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Icon(
                          Icons.favorite,
                          size: 16,
                          color: blackColor.withOpacity(0.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Icon(
                          Icons.energy_savings_leaf_rounded,
                          size: 16,
                          color: blackColor.withOpacity(0.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Icon(
                          Icons.medical_information,
                          size: 16,
                          color: blackColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: greenColor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Actif',
                    style: TextStyle(
                      color: greenColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: lightYellowColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'N˚ 0105',
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: maroonColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.edit_square,
                color: whiteColor,
                size: 16,
              ),
              const SizedBox(width: 20),
              Text(
                'Editer',
                style: TextStyle(
                  fontSize: 14,
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
