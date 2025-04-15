import 'package:flutter/cupertino.dart';

@immutable
abstract class OnboardingEvent {}

class PageChangedEvent extends OnboardingEvent {}

class PageSwipedEvent extends OnboardingEvent {
  final int index;

  PageSwipedEvent({required this.index});
}
