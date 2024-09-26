import 'package:equatable/equatable.dart';

class HoraireState extends Equatable {
  final Map<String, bool> days; // Days active/inactive
  final List<Map<String, bool>> timePeriods; // Time period checkboxes
  final bool isProfileActive; // Profile active/inactive

  const HoraireState({
    required this.days,
    required this.timePeriods,
    required this.isProfileActive, // Profile active status added here
  });

  @override
  List<Object> get props => [days, timePeriods, isProfileActive];

  // Copy the state while optionally updating values
  HoraireState copyWith({
    Map<String, bool>? days,
    List<Map<String, bool>>? timePeriods,
    bool? isProfileActive, // Add profile active here
  }) {
    return HoraireState(
      days: days ?? this.days,
      timePeriods: timePeriods ?? this.timePeriods,
      isProfileActive:
          isProfileActive ?? this.isProfileActive, // Return the active status
    );
  }

  // Initial state of the app
  factory HoraireState.initial() {
    return const HoraireState(
      days: {
        'Lundi': true,
        'Mardi': false,
        'Mercredi': true,
        'Jeudi': true,
        'Vendredi': true,
        'Samedi': false,
        'Dimanche': false,
      },
      timePeriods: [
        {
          'Toute la journée': true,
          'Matin': false,
          'Midi': false,
          'Après-midi': false,
          'Soir': false,
        },
        {
          'Toute la journée': true,
          'Matin': false,
          'Midi': false,
          'Après-midi': false,
          'Soir': false,
        },
        {
          'Toute la journée': true,
          'Matin': false,
          'Midi': false,
          'Après-midi': false,
          'Soir': false,
        },
      ],
      isProfileActive: true, // Initially active
    );
  }
}
