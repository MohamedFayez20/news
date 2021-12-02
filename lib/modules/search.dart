import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news/shared/component/item.dart';
import 'package:news/shared/cubit/cubit.dart';
import 'package:news/shared/cubit/states.dart';

class SearchScreen extends StatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var list = AppCubit.get(context).search;
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        backgroundColor: HexColor('#23323f'),
        appBar: AppBar(
          title: Container(
            height: 45.0,
            decoration: BoxDecoration(
              color: HexColor('#313D4D'),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: TextFormField(
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'search must not be empty';
                }
                return null;
              },
              onChanged: (value) {
                AppCubit.get(context).getSearch(value);
              },
              controller: searchController,
              cursorColor: Colors.grey,
              style: TextStyle(fontSize: 17.0, color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey.shade600),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          backgroundColor: HexColor('#23323f'),
          elevation: 0.0,
        ),
        body: BuildCondition(
          condition: state is! GetSearchLoadingState,
          builder: (context) => ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: buildItem(list[index], context),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 1,
                  ),
              itemCount: list.length),
          fallback: (context) => Center(
            child: CircularProgressIndicator(
              color: Colors.redAccent,
            ),
          ),
        ),
      ),
    );
  }
}
