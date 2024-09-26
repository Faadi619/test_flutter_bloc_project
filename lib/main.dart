import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_bloc_project/data/repositories/employee_repository.dart';
import 'package:test_flutter_bloc_project/domain/usecases/get_employee.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/employee_bloc/employee_event.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/employee_details/employee_details_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/section_bloc/section_change_bloc.dart';
import 'presentation/bloc/employee_bloc/employee_bloc.dart';
import 'presentation/pages/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize the repository
    final employeeRepository = EmployeeRepository();

    // Initialize the use case with the repository
    final getEmployeeUseCase = GetEmployee(employeeRepository);

    return MultiBlocProvider(
      providers: [
        // Pass the `GetEmployee` use case into the EmployeeBloc constructor
        BlocProvider(
          create: (context) => EmployeeBloc(getEmployee: getEmployeeUseCase)
            ..add(LoadEmployeeEvent()), // Trigger loading employees on startup
        ),
        BlocProvider(
          create: (_) => SectionBloc(),
        ),
        BlocProvider(
          create: (_) => HoraireBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: MainScreen(),
      ),
    );
  }
}
