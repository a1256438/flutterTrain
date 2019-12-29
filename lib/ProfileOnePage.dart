/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
 class ProfileOnePage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile1.dart";
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        // backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text("使用者頁面"),
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9],
                  colors: [
                    Colors.red,
                    Colors.deepOrange.shade300
                  ]
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.call, size: 30.0,),
                        minRadius: 30.0,
                        backgroundColor: Colors.red.shade600,),
                      CircleAvatar(
                        minRadius: 60,
                        backgroundColor: Colors.deepOrange.shade300,
                        child: CircleAvatar(
                          backgroundImage:
                          NetworkImage('https://wowlavie-aws.hmgcdn.com/file/article_all/source/A1486541280.jpg'),
                          backgroundColor: Colors.red,
                          minRadius: 50,

                        ),
                      ),
                      CircleAvatar(
                        child: Icon(Icons.message, size: 30.0,),
                        minRadius: 30.0,
                        backgroundColor: Colors.red.shade600,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("Rex", style: TextStyle(fontSize: 22.0, color: Colors.white),),
                  Text("台灣, New TaipeiCity", style: TextStyle(fontSize: 14.0, color: Colors.white),)
                ],
              ),
            ),
            Container(
              // height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.deepOrange.shade300,
                      child: ListTile(
                        title: Text("1",textAlign: TextAlign.center, style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0
                        ),),
                        subtitle: Text("FOLLOWERS", textAlign: TextAlign.center, style: TextStyle(color: Colors.red),),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: ListTile(
                        title: Text("0",textAlign: TextAlign.center, style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0
                        ),),

                        subtitle: Text("FOLLOWING", textAlign: TextAlign.center, style: TextStyle(color: Colors.white70),),
                      onTap: () {
                          
                      }
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Email", style: TextStyle(color: Colors.deepOrange, fontSize: 12.0),),
              subtitle: Text("rex@eupfin.com", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
            ListTile(
              title: Text("Phone", style: TextStyle(color: Colors.deepOrange, fontSize: 12.0),),
              subtitle: Text("自己猜", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
            ListTile(
              title: Text("Twitter", style: TextStyle(color: Colors.deepOrange, fontSize: 12.0),),
              subtitle: Text("自己猜", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
            ListTile(
              title: Text("Facebook", style: TextStyle(color: Colors.deepOrange, fontSize: 12.0),),
              subtitle: Text("自己猜", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
          ],
        ),
      );
    }
}