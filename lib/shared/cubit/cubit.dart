import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/shared/cubit/states.dart';
import 'package:news/shared/network/remote/dio.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  List<dynamic> business = [];
  void getBusiness() {
    emit(GetBusinessLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'us',
      'category': 'business',
      'apiKey': '4b3f01951e404738b0bb28bdfb60ad53'
    }).then((value) {
      business = value.data['articles'];

      emit(GetBusinessSuccessState());
    }).catchError((error) {
      emit(GetBusinessErrorState(error.toString()));
    });
  }

  List<dynamic> entertainment = [];
  void getEntertainment() {
    emit(GetBusinessLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'us',
      'category': 'entertainment',
      'apiKey': '4b3f01951e404738b0bb28bdfb60ad53'
    }).then((value) {
      entertainment = value.data['articles'];
      emit(GetEntertainmentSuccessState());
    }).catchError((error) {
      emit(GetEntertainmentErrorState(error.toString()));
    });
  }

  List<dynamic> health = [];
  void getHealth() {
    emit(GetBusinessLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'us',
      'category': 'health',
      'apiKey': '4b3f01951e404738b0bb28bdfb60ad53'
    }).then((value) {
      health = value.data['articles'];
      emit(GetHealthSuccessState());
    }).catchError((error) {
      emit(GetHealthErrorState(error.toString()));
    });
  }

  List<dynamic> science = [];
  void getScience() {
    emit(GetBusinessLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'us',
      'category': 'science',
      'apiKey': '4b3f01951e404738b0bb28bdfb60ad53'
    }).then((value) {
      science = value.data['articles'];
      emit(GetScienceSuccessState());
    }).catchError((error) {
      emit(GetScienceErrorState(error.toString()));
    });
  }

  List<dynamic> sports = [];
  void getSports() {
    emit(GetBusinessLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'us',
      'category': 'sports',
      'apiKey': '4b3f01951e404738b0bb28bdfb60ad53'
    }).then((value) {
      sports = value.data['articles'];
      emit(GetSportsSuccessState());
    }).catchError((error) {
      emit(GetSportsErrorState(error.toString()));
    });
  }

  List<dynamic> technology = [];
  void getTechnology() {
    emit(GetBusinessLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'us',
      'category': 'technology',
      'apiKey': '4b3f01951e404738b0bb28bdfb60ad53'
    }).then((value) {
      technology = value.data['articles'];
      emit(GetTechnologySuccessState());
    }).catchError((error) {
      emit(GetTechnologyErrorState(error.toString()));
    });
  }

  List<dynamic> search = [];
  void getSearch(String value) {
    GetSearchLoadingState();
    search = [];
    DioHelper.getData(
            url: 'v2/everything',
            query: {'q': '$value', 'apiKey': '4b3f01951e404738b0bb28bdfb60ad53'})
        .then((value) {
      search = value.data['articles'];
      emit(GetSearchSuccessState());
    }).catchError((error) {
      print('${error.toString()}');
      emit(GetSearchErrorState(error.toString()));
    });
  }
}
