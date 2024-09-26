import 'package:equatable/equatable.dart';
import 'package:test_flutter_bloc_project/presentation/pages/ScreensList.dart';

abstract class SectionEvent extends Equatable {
  const SectionEvent();

  @override
  List<Object> get props => [];
}

class SelectSection extends SectionEvent {
  final ScreenEnum section;

  const SelectSection(this.section);

  @override
  List<Object> get props => [section];
}
