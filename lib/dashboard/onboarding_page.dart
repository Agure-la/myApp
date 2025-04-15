import 'package:flutter/material.dart';
import 'package:my_login/auth/signup.dart';
import 'package:my_login/dashboard/OnboardingBloc.dart';
import 'package:my_login/dashboard/OnboardingState.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<OnboardingBloc> _buildBody(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (BuildContext context) => OnboardingBloc(),
      child: BlocConsumer<OnboardingBloc, OnboardingState>(
          listenWhen: (_, currState) => currState is NextScreenState,
          listener: (context, state) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) {
                  return SignupCard();
                },
              ),
            );
          },
          buildWhen: (_, currState) => currState is OnboardingInitial,
          builder: (context, state) {
            return OnboardingContent();
          },
        ),
    );
  }
}
