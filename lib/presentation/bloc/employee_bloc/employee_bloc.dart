import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_bloc_project/domain/usecases/get_employee.dart';
import 'employee_event.dart';
import 'employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final GetEmployee getEmployee;

  EmployeeBloc({required this.getEmployee}) : super(EmployeeLoading()) {
    on<LoadEmployeeEvent>((event, emit) async {
      emit(EmployeeLoading());
      try {
        final employees = await getEmployee();
        emit(EmployeeLoaded(employees));
      } catch (e) {
        emit(EmployeeError('Failed to load employees'));
      }
    });
  }
}
