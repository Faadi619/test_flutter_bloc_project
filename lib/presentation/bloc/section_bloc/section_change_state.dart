import 'package:equatable/equatable.dart';
import 'package:test_flutter_bloc_project/presentation/pages/ScreensList.dart';

class SectionState extends Equatable {
  final ScreenEnum selectedSection;

  const SectionState(this.selectedSection);

  @override
  List<Object> get props => [selectedSection];
}
