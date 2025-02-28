part of 'workout_creator_bloc.dart';

/// {@template workout_creator_event}
/// Event for workout creator.
/// {@endtemplate}
abstract class WorkoutCreatorEvent extends Equatable {
  /// {@macro workout_creator_event}
  const WorkoutCreatorEvent();

  @override
  List<Object> get props => [];
}

/// {@template workout_creator_template_changed}
/// Event for when the workout template is changed.
/// {@endtemplate}
class WorkoutCreatorTemplateChanged extends WorkoutCreatorEvent {
  /// {@macro workout_creator_template_changed}
  const WorkoutCreatorTemplateChanged(this.workoutTemplate);

  /// New workout template.
  final WorkoutTemplate workoutTemplate;

  @override
  List<Object> get props => [workoutTemplate];
}

/// {@template workout_creator_add_exercises}
/// Event for adding exercises to the workout template.
/// {@endtemplate}
class WorkoutCreatorAddExercises extends WorkoutCreatorEvent {
  /// {@macro workout_creator_add_exercises}
  const WorkoutCreatorAddExercises(this.exercises);

  /// New workout template.
  final List<Exercise> exercises;

  @override
  List<Object> get props => [exercises];
}

/// {@template workout_creator_exercise_changed}
/// Event for updating exercise at given index.
/// {@endtemplate}
class WorkoutCreatorExerciseChanged extends WorkoutCreatorEvent {
  /// {@macro workout_creator_exercise_changed}
  const WorkoutCreatorExerciseChanged({
    required this.exerciseIndex,
    required this.exercise,
  });

  /// Index of the exercise to change.
  final int exerciseIndex;

  /// New workout template.
  final WorkoutExercise exercise;

  @override
  List<Object> get props => [
        exerciseIndex,
        exercise,
      ];
}

/// {@template workout_creator_reorder_exercises}
/// Event for reordering exercises to the workout template.
/// {@endtemplate}
class WorkoutCreatorReorderExercises extends WorkoutCreatorEvent {
  /// {@macro workout_creator_reorder_exercises}
  const WorkoutCreatorReorderExercises({
    required this.oldIndex,
    required this.newIndex,
  });

  /// Old index of the exercise.
  final int oldIndex;

  /// New index of the exercise.
  final int newIndex;

  @override
  List<Object> get props => [
        oldIndex,
        newIndex,
      ];
}

/// {@template workout_creator_delete_exercise}
/// Event for deleting exercises to the workout template.
/// {@endtemplate}
class WorkoutCreatorDeleteExercise extends WorkoutCreatorEvent {
  /// {@macro workout_creator_delete_exercise}
  const WorkoutCreatorDeleteExercise({
    required this.index,
  });

  /// Index of the exercise to delete.
  final int index;

  @override
  List<Object> get props => [
        index,
      ];
}

/// {@template workout_creator_delete_exercise_set}
/// Event for deleting exercise sets.
/// {@endtemplate}
class WorkoutCreatorDeleteExerciseSet extends WorkoutCreatorEvent {
  /// {@macro workout_creator_delete_exercise_set}
  const WorkoutCreatorDeleteExerciseSet({
    required this.exerciseIndex,
    required this.setIndex,
  });

  /// Index of the exercise.
  final int exerciseIndex;

  /// Index of the set.
  final int setIndex;

  @override
  List<Object> get props => [
        exerciseIndex,
        setIndex,
      ];
}

/// {@template workout_creator_exercise_set_changed}
/// Event for deleting exercises to the workout template.
/// {@endtemplate}
class WorkoutCreatorExerciseSetChanged extends WorkoutCreatorEvent {
  /// {@macro workout_creator_exercise_set_changed}
  const WorkoutCreatorExerciseSetChanged({
    required this.exerciseIndex,
    required this.setIndex,
    required this.set,
  });

  /// Index of the exercise.
  final int exerciseIndex;

  /// Index of the set.
  final int setIndex;

  /// New set.
  final ExerciseSet set;

  @override
  List<Object> get props => [
        exerciseIndex,
        setIndex,
        set,
      ];
}

/// {@template workout_creator_submit_template}
/// Event for when the workout template is submitted.
/// {@endtemplate}
class WorkoutCreatorSubmitTemplate extends WorkoutCreatorEvent {
  /// {@macro workout_creator_submit_template}
  const WorkoutCreatorSubmitTemplate();
}
