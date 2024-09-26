import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/section_bloc/section_change_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/section_bloc/section_change_event.dart';
import 'package:test_flutter_bloc_project/presentation/pages/ScreensList.dart';

// ignore: must_be_immutable
class CustomDrawer extends StatefulWidget {
  CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  ExpansionTileController enfantsExpansionController =
      ExpansionTileController();

  ExpansionTileController calenderExpansionController =
      ExpansionTileController();

  ExpansionTileController gestianExpansionController =
      ExpansionTileController();

  ExpansionTileController outilsExpansionController = ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: 250,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 100,
              margin: const EdgeInsets.only(left: 30, top: 10, right: 3),
              decoration: BoxDecoration(
                //TODO: Add logo image
                // image: DecorationImage(
                //   image: AssetImage('assets/images/logo.png'),
                //   fit: BoxFit.cover,
                // ),
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
              ),
              child: const Center(
                child: Text(
                  'LOGO',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  _createDrawerItem(
                    icon: Icons.home,
                    text: 'Tableau de bord',
                    onTap: () {
                      //TODO: Add navigation to dashboard
                      BlocProvider.of<SectionBloc>(context)
                          .add(const SelectSection(ScreenEnum.tableau));
                    },
                  ),
                  _createDrawerItem(
                    icon: Icons.message,
                    text: 'Messages',
                    notificationCount: 3,
                    onTap: () {
                      //TODO: Add navigation to dashboard
                      BlocProvider.of<SectionBloc>(context)
                          .add(const SelectSection(ScreenEnum.messages));
                    },
                  ),
                  _createDrawerItem(
                    icon: Icons.calendar_today,
                    text: 'Agenda',
                    onTap: () {
                      //TODO: Add navigation to dashboard
                      BlocProvider.of<SectionBloc>(context)
                          .add(const SelectSection(ScreenEnum.agenda));
                    },
                  ),
                  ExpansionTile(
                    dense: true,
                    // backgroundColor: Colors.black.withOpacity(0.4),
                    shape: const RoundedRectangleBorder(),
                    controller: enfantsExpansionController,
                    leading: const Icon(Icons.people, size: 20),
                    title: const Text(
                      'Enfants',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    children: [
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                          // BlocProvider.of<SectionBloc>(context)
                          //     .add(const SelectSection('Documents'));
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Enfants 1',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                          // BlocProvider.of<SectionBloc>(context)
                          //     .add(const SelectSection('Documents'));
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Enfants 2',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                          // BlocProvider.of<SectionBloc>(context)
                          //     .add(const SelectSection('Documents'));
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Enfants 3',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    controller: calenderExpansionController,
                    shape: const RoundedRectangleBorder(),
                    leading: const Icon(Icons.calendar_today, size: 20),
                    title: const Text(
                      'Calendrier',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    children: [
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                          // BlocProvider.of<SectionBloc>(context)
                          //     .add(const SelectSection('Documents'));
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Calendrier 1',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                          // BlocProvider.of<SectionBloc>(context)
                          //     .add(const SelectSection('Documents'));
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Calendrier 2',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                          // BlocProvider.of<SectionBloc>(context)
                          //     .add(const SelectSection('Documents'));
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Calendrier 3',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  _createDrawerItem(
                    icon: Icons.menu_rounded,
                    text: 'Menu',
                    onTap: () {
                      //TODO: Add navigation to dashboard
                      BlocProvider.of<SectionBloc>(context)
                          .add(const SelectSection(ScreenEnum.menu));
                    },
                  ),
                  _createDrawerItem(
                    icon: Icons.file_present_rounded,
                    text: 'Facturation',
                    onTap: () {
                      //TODO: Add navigation to dashboard
                      BlocProvider.of<SectionBloc>(context)
                          .add(const SelectSection(ScreenEnum.facturation));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey[200],
              thickness: 1,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  ExpansionTile(
                    dense: true,
                    controller: gestianExpansionController,
                    shape: const RoundedRectangleBorder(),
                    leading: const Icon(Icons.info, size: 20),
                    title: const Text(
                      'Gestion garderie',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    children: [
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                          BlocProvider.of<SectionBloc>(context)
                              .add(const SelectSection(ScreenEnum.employes));
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Employés',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                          BlocProvider.of<SectionBloc>(context)
                              .add(const SelectSection(ScreenEnum.parents));
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Parents',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                          BlocProvider.of<SectionBloc>(context)
                              .add(const SelectSection(ScreenEnum.documents));
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Documents',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    dense: true,
                    controller: outilsExpansionController,
                    shape: const RoundedRectangleBorder(),
                    leading:
                        const Icon(Icons.assignment_late_rounded, size: 20),
                    title: const Text(
                      'Outils',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    children: [
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Outils 1',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Outils 2',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //TODO: Add navigation to dashboard
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Outils 3',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerItem({
  required IconData icon,
  required String text,
  int? notificationCount,
  GestureTapCallback? onTap,
}) {
  return ListTile(
    minTileHeight: 30,
    minLeadingWidth: 10,
    leading: Icon(icon, size: 20),
    trailing: notificationCount == null
        ? const SizedBox.shrink()
        : Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(2),
            ),
            child: Center(
              child: Text(
                notificationCount.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
    title: Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    onTap: onTap,
  );
}
