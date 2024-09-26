import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/employee_details/employee_details_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/employee_details/employee_details_event.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/employee_details/employee_details_state.dart';

class PersonDetailWidget extends StatefulWidget {
  const PersonDetailWidget({super.key});

  @override
  State<PersonDetailWidget> createState() => _PersonDetailWidgetState();
}

class _PersonDetailWidgetState extends State<PersonDetailWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<HoraireBloc, HoraireState>(builder: (context, state) {
          return Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Laurence Dupont',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        state.isProfileActive ? 'Actif' : 'Inactif',
                        style: TextStyle(
                          fontSize: 16,
                          color: state.isProfileActive
                              ? Colors.black
                              : Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          activeColor: Colors.black,
                          value: state.isProfileActive,
                          onChanged: (value) {
                            context
                                .read<HoraireBloc>()
                                .add(ToggleProfileActiveEvent(value));
                          },
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          );
        }),
        Row(
          children: [
            InkWell(
              onTap: () {
                //TODO: Add function here.
              },
              child: Container(
                width: 130,
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                    ),
                    SizedBox(width: 10),
                    Text('Précédent'),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {
                //TODO: Add function here.
              },
              child: Container(
                width: 130,
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Suivant'),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
