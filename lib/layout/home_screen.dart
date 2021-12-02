import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news/layout/home.dart';
import 'package:news/shared/cubit/cubit.dart';
import 'package:news/shared/cubit/states.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        body: Home(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {},
          iconSize: 30.0,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          backgroundColor: HexColor('#313D4D'),
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dynamic_feed_sharp,
                ),
                label: 'Feeds'),
          ],
        ),
      ),
    );
  }
}
