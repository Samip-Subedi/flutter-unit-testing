part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {}

class OnboardingPageChanged extends OnboardingState {
  final int currentPage;

  const OnboardingPageChanged(this.currentPage);

  @override
  List<Object> get props => [currentPage];
}

class OnboardingCompleted extends OnboardingState {}
