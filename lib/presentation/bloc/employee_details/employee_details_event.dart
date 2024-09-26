import 'package:equatable/equatable.dart';

abstract class HoraireEvent extends Equatable {
  const HoraireEvent();
}

// Event to toggle a day's active state
class ToggleDayEvent extends HoraireEvent {
  final String day;
  final bool isActive;

  const ToggleDayEvent(this.day, this.isActive);

  @override
  List<Object> get props => [day, isActive];
}

// Event to toggle a time period's checkbox state
class ToggleTimePeriodEvent extends HoraireEvent {
  final int tileIndex;
  final String period;
  final bool isSelected;

  const ToggleTimePeriodEvent(this.tileIndex, this.period, this.isSelected);

  @override
  List<Object> get props => [tileIndex, period, isSelected];
}

// Event to toggle the profile's active state
class ToggleProfileActiveEvent extends HoraireEvent {
  final bool isActive;

  const ToggleProfileActiveEvent(this.isActive);

  @override
  List<Object> get props => [isActive];
}
