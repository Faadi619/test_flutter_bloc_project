import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/section_bloc/section_change_event.dart';
import 'package:test_flutter_bloc_project/presentation/bloc/section_bloc/section_change_state.dart';
import 'package:test_flutter_bloc_project/presentation/pages/ScreensList.dart';

class SectionBloc extends Bloc<SelectSection, SectionState> {
  SectionBloc() : super(const SectionState(ScreenEnum.none)) {
    on<SelectSection>((event, emit) {
      emit(SectionState(event.section));
    });
  }
}
