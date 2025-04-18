import 'package:flutter/cupertino.dart';

@immutable
abstract class OnboardingState {}

class OnboardingInitial extends OnboardingState {}

class PageChangedState extends OnboardingState {
  final int counter;

  PageChangedState({
    required this.counter,
});
}

class NextScreenState extends OnboardingState {}