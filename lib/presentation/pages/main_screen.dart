import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/section_bloc/section_change_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/section_bloc/section_change_state.dart';
import 'package:test_flutter_bloc_project/presentation/pages/ScreensList.dart';
import 'package:test_flutter_bloc_project/presentation/widgets/custom_app_bar.dart';
import 'package:test_flutter_bloc_project/presentation/widgets/custom_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  Widget _selectScreen(SectionState state, Map<ScreenEnum, Widget> screens) {
    return screens[state.selectedSection] ?? screens[ScreenEnum.none]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SectionBloc(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              // Custom Drawer

              CustomDrawer(),
              const VerticalDivider(width: 2),
              Column(
                children: [
                  // Custom App Bar
                  const CustomAppBar(),

                  //Screens from Drawer

                  BlocBuilder<SectionBloc, SectionState>(
                    builder: (context, state) {
                      return _selectScreen(state, screenList);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // Employee Profile UI
    );
  }
}
