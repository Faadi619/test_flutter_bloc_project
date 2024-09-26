import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/employee_details/employee_details_event.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/employee_details/employee_details_state.dart';

class HoraireBloc extends Bloc<HoraireEvent, HoraireState> {
  HoraireBloc() : super(HoraireState.initial()) {
    on<ToggleDayEvent>((event, emit) {
      final updatedDays = Map<String, bool>.from(state.days);
      updatedDays[event.day] = event.isActive;
      emit(state.copyWith(days: updatedDays));
    });

    on<ToggleTimePeriodEvent>((event, emit) {
      final updatedTimePeriods =
          List<Map<String, bool>>.from(state.timePeriods);
      updatedTimePeriods[event.tileIndex] =
          Map<String, bool>.from(updatedTimePeriods[event.tileIndex]);
      updatedTimePeriods[event.tileIndex][event.period] = event.isSelected;
      emit(state.copyWith(timePeriods: updatedTimePeriods));
    });

    // Handle toggling of profile active status
    on<ToggleProfileActiveEvent>((event, emit) {
      emit(state.copyWith(isProfileActive: event.isActive));
    });
  }
}
