abstract class AppStates {}

class InitialState extends AppStates {}

class BottomNavBarState extends AppStates {}

class GetBusinessLoadingState extends AppStates {}

class GetBusinessSuccessState extends AppStates {}

class GetBusinessErrorState extends AppStates {
  final String error;

  GetBusinessErrorState(this.error);
}

class GetEntertainmentLoadingState extends AppStates {}

class GetEntertainmentSuccessState extends AppStates {}

class GetEntertainmentErrorState extends AppStates {
  final String error;

  GetEntertainmentErrorState(this.error);
}

class GetHealthLoadingState extends AppStates {}

class GetHealthSuccessState extends AppStates {}

class GetHealthErrorState extends AppStates {
  final String error;

  GetHealthErrorState(this.error);
}

class GetScienceLoadingState extends AppStates {}

class GetScienceSuccessState extends AppStates {}

class GetScienceErrorState extends AppStates {
  final String error;

  GetScienceErrorState(this.error);
}

class GetSportsLoadingState extends AppStates {}

class GetSportsSuccessState extends AppStates {}

class GetSportsErrorState extends AppStates {
  final String error;

  GetSportsErrorState(this.error);
}

class GetTechnologyLoadingState extends AppStates {}

class GetTechnologySuccessState extends AppStates {}

class GetTechnologyErrorState extends AppStates {
  final String error;

  GetTechnologyErrorState(this.error);
}

class GetSearchLoadingState extends AppStates {}

class GetSearchSuccessState extends AppStates {}

class GetSearchErrorState extends AppStates {
  final String error;

  GetSearchErrorState(this.error);
}
class GetAllFeedsLoadingState extends AppStates {}

class GetAllFeedsSuccessState extends AppStates {}

class GetAllFeedsErrorState extends AppStates {
  final String error;

  GetAllFeedsErrorState(this.error);
}
