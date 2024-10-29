import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/const/colors.dart';

class MedicalDetailsWidget extends StatelessWidget {
  const MedicalDetailsWidget({super.key});

  Padding buildPersonalInfo(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(
            '$title:   ',
            style: TextStyle(color: greyColor),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
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
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildPersonalInfo(
                'Age',
                '8 mois',
              ),
              buildPersonalInfo(
                'Frère et soeur de',
                '---',
              ),
              buildPersonalInfo(
                'Date de naissance',
                '2016-12-19',
              ),
              buildPersonalInfo(
                'Groupe',
                'Garderie Imaginaire - Les dinasaures (4-5 ans)',
              ),
              buildPersonalInfo(
                'Allergies',
                'Eufs, noix',
              ),
              buildPersonalInfo(
                'Médicaments',
                'Acétaminophène, Epipen',
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildPersonalInfo(
                'Date de début',
                '2020-07-18',
              ),
              buildPersonalInfo(
                'Date de fin',
                '---',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

