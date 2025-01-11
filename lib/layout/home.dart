import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news/modules/business.dart';
import 'package:news/modules/entertainment.dart';
import 'package:news/modules/health.dart';
import 'package:news/modules/science.dart';
import 'package:news/modules/search.dart';
import 'package:news/modules/sports.dart';
import 'package:news/modules/technology.dart';
import 'package:news/shared/cubit/cubit.dart';
import 'package:news/shared/cubit/states.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 6,
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: HexColor('#23323f'),
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: HexColor('#23323f'),
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: HexColor('#313D4D'),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: TextFormField(
                    showCursor: false,
                    readOnly: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SearchScreen()));
                      AppCubit.get(context).search = [];
                    },
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
              ),
              bottom: TabBar(
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 18.0),
                indicatorColor: Colors.redAccent,
                labelColor: Colors.redAccent,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    child: Text('Business'),
                  ),
                  Tab(
                    child: Text('Entertainment'),
                  ),
                  Tab(
                    child: Text('Health'),
                  ),
                  Tab(
                    child: Text('Science'),
                  ),
                  Tab(
                    child: Text('Sports'),
                  ),
                  Tab(
                    child: Text('Technology'),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                BusinessScreen(),
                EntertainmentScreen(),
                HealthScreen(),
                ScienceScreen(),
                SportsScreen(),
                TechnologyScreen(),
              ],
            ),
          );
        },
      ),
    );
  }
}
