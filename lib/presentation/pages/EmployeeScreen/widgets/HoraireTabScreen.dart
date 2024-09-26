import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/employee_details/employee_details_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/employee_details/employee_details_event.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/employee_details/employee_details_state.dart';

class HoraireTab extends StatefulWidget {
  const HoraireTab({super.key});

  @override
  _HoraireTabState createState() => _HoraireTabState();
}

class _HoraireTabState extends State<HoraireTab> {
  final ExpansionTileController _expansionTileController1 =
      ExpansionTileController();
  final ExpansionTileController _expansionTileController2 =
      ExpansionTileController();
  final ExpansionTileController _expansionTileController3 =
      ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoraireBloc, HoraireState>(builder: (context, state) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            'Définir la période pendant lesquelles l\'employé doit être présent.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),

          // Switches for each day
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 400,
                child: ListView(
                  shrinkWrap: true,
                  children: state.days.keys.map((day) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          day,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              state.days[day]! ? 'Actif' : 'Inactif',
                              style: TextStyle(
                                fontSize: 14,
                                color: state.days[day]!
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                            Transform.scale(
                              scale: 0.8,
                              child: CupertinoSwitch(
                                activeColor: Colors.black,
                                value: state.days[day]!,
                                onChanged: (value) {
                                  context
                                      .read<HoraireBloc>()
                                      .add(ToggleDayEvent(day, value));
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: 400,
                    child: ExpansionTile(
                      controller: _expansionTileController1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.grey, width: 1),
                      ),
                      collapsedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.grey, width: 1),
                      ),
                      onExpansionChanged: (value) {
                        if (value) {
                          _expansionTileController2.collapse();
                          _expansionTileController3.collapse();
                        }
                      },
                      title: const Text(
                        'Sélectionner la période 1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      children: state.timePeriods[0].keys.map((period) {
                        return CheckboxListTile(
                          title: Text(period),
                          value: state.timePeriods[0][period],
                          onChanged: (bool? value) {
                            context
                                .read<HoraireBloc>()
                                .add(ToggleTimePeriodEvent(0, period, value!));
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 400,
                    child: ExpansionTile(
                      controller: _expansionTileController2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.grey, width: 1),
                      ),
                      collapsedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.grey, width: 1),
                      ),
                      onExpansionChanged: (value) {
                        if (value) {
                          _expansionTileController1.collapse();
                          _expansionTileController3.collapse();
                        }
                      },
                      title: const Text(
                        'Sélectionner la période 2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      children: state.timePeriods[1].keys.map((period) {
                        return CheckboxListTile(
                          title: Text(period),
                          value: state.timePeriods[1][period],
                          onChanged: (bool? value) {
                            setState(() {
                              context.read<HoraireBloc>().add(
                                  ToggleTimePeriodEvent(1, period, value!));
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 400,
                    child: ExpansionTile(
                      controller: _expansionTileController3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.grey, width: 1),
                      ),
                      collapsedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.grey, width: 1),
                      ),
                      onExpansionChanged: (value) {
                        if (value) {
                          _expansionTileController1.collapse();
                          _expansionTileController2.collapse();
                        }
                      },
                      title: const Text(
                        'Sélectionner la période',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      children: state.timePeriods[2].keys.map((period) {
                        return CheckboxListTile(
                          title: Text(period),
                          value: state.timePeriods[2][period],
                          onChanged: (bool? value) {
                            setState(() {
                              context.read<HoraireBloc>().add(
                                  ToggleTimePeriodEvent(2, period, value!));
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
                  child: const Center(
                    child: Text(
                      'Annuler',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  //TODO: Add function here.
                },
                child: Container(
                  width: 250,
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF89CAFC),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      'Sauvegarder les modifications',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      );
    });
  }
}
