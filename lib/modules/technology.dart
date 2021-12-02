import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/shared/component/item.dart';
import 'package:news/shared/cubit/cubit.dart';
import 'package:news/shared/cubit/states.dart';

class TechnologyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = AppCubit.get(context).technology;
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return BuildCondition(
          condition: state is! GetTechnologyLoadingState,
          builder: (context) => ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => buildItem(list[index], context),
              separatorBuilder: (context, index) => SizedBox(
                    height: 5.0,
                  ),
              itemCount: list.length),
          fallback: (context) => Center(
            child: CircularProgressIndicator(
              color: Colors.redAccent,
            ),
          ),
        );
      },
    );
  }
}
