import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/const/colors.dart';

class GuardianNumberCardWidget extends StatelessWidget {
  final String guardianRelation;
  final String guardianName;
  final String email;
  final String telephone;
  final String? profileImage;

  const GuardianNumberCardWidget({
    super.key,
    required this.guardianName,
    required this.email,
    required this.telephone,
    required this.guardianRelation,
    this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          decoration: ShapeDecoration(
            color: lightYellowColor.withOpacity(0.8),
            shape: const StadiumBorder(),
          ),
          child: Text(
            guardianRelation,
            style: TextStyle(
              color: blackColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: maroonColor.withOpacity(0.5),
                child: Center(
                  child: Text(
                    profileImage ??
                        (guardianName
                            .split(' ')
                            .map((e) => e[0])
                            .take(2)
                            .join()),
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          guardianName,
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Autorisé',
                          style: TextStyle(
                            color: greenColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Courriel :',
                          style: TextStyle(
                            color: greyColor,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          ' $email',
                          style: TextStyle(
                            color: greyColor,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Téléphone :',
                          style: TextStyle(
                            color: greyColor,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          ' $telephone',
                          style: TextStyle(
                            color: greyColor,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: ShapeDecoration(
                  color: maroonColor.withOpacity(0.2),
                  shape: const StadiumBorder(),
                ),
                child: Text(
                  'Urgence',
                  style: TextStyle(
                    color: maroonColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
