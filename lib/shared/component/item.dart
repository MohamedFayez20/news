import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news/modules/web_view_screen.dart';

Widget buildItem(articles, context) => InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewScreen(articles['url']),
          ),
        );
      },
      child: Container(
        height: 180,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                width: double.infinity,
                color: HexColor('#313D4D'),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('${articles['urlToImage']}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(right: 10),
                          height: 120.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  '${articles['title']}',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional.bottomEnd,
                                child: Text(
                                  '${articles['publishedAt']}',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Card(
                elevation: 8.0,
                child: Container(
                  alignment: AlignmentDirectional.center,
                  height: 37,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Text(
                      '${articles['source']['name']}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                color: HexColor('#3d4c60'),
              ),
            ),
          ],
        ),
      ),
    );
