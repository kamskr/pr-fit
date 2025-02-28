import 'package:app_models/app_models.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// {@template gender_picker}
/// Widget used for picking user's gender.
/// {@endtemplate}
class GenderPicker extends StatelessWidget {
  /// {@macro gender_picker}
  const GenderPicker({
    Key? key,
    this.selected,
    required this.onChange,
  }) : super(key: key);

  /// Currently selected gender.
  final Gender? selected;

  /// On change callback.
  final void Function(Gender) onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        _MaleOption(
          key: const Key('gender_picker_male'),
          isSelected: selected == Gender.male,
          onChange: onChange,
        ),
        const AppGap.xlg(),
        _FemaleOption(
          key: const Key('gender_picker_female'),
          isSelected: selected == Gender.female,
          onChange: onChange,
        ),
        const Spacer(),
      ],
    );
  }
}

class _MaleOption extends StatelessWidget {
  const _MaleOption({
    Key? key,
    required this.isSelected,
    required this.onChange,
  }) : super(key: key);

  final bool isSelected;
  final void Function(Gender) onChange;

  @override
  Widget build(BuildContext context) {
    final mainColors = context.colorScheme;

    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        onChange(Gender.male);
      },
      child: _GenderCircle(
        isSelected: isSelected,
        child: Assets.icons.male.svg(
          color: isSelected ? mainColors.surface : mainColors.primary,
        ),
      ),
    );
  }
}

class _FemaleOption extends StatelessWidget {
  const _FemaleOption({
    Key? key,
    required this.isSelected,
    required this.onChange,
  }) : super(key: key);

  final bool isSelected;
  final void Function(Gender) onChange;

  @override
  Widget build(BuildContext context) {
    final mainColors = context.colorScheme;

    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        onChange(Gender.female);
      },
      child: _GenderCircle(
        isSelected: isSelected,
        child: Assets.icons.female.svg(
          color: isSelected ? mainColors.surface : mainColors.primary,
        ),
      ),
    );
  }
}

class _GenderCircle extends StatelessWidget {
  const _GenderCircle({
    Key? key,
    required this.child,
    required this.isSelected,
  }) : super(key: key);

  final Widget child;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final mainColors = context.colorScheme;

    return SizedBox(
      height: 110,
      width: 110,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected ? mainColors.primary : mainColors.surface,
          shape: BoxShape.circle,
          border: Border.all(
            color: mainColors.primary,
            width: 2,
          ),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
