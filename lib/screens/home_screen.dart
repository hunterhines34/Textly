import 'package:flutter/material.dart';
import 'package:textly/widgets/category_selector.dart';
import 'package:textly/widgets/favorite_contacts.dart';
import 'package:textly/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text('Textly',
            style: TextStyle(
              fontSize: 24.0,
              letterSpacing: 2.0,
            ),
          ),
          elevation: 0.0,
          centerTitle: true,
            actions: <Widget>[
              IconButton(
              icon: Icon(Icons.search),
              iconSize: 24.0,
              color: Colors.white,
              onPressed: () {
                //do something
              },
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    FavoriteContacts(),
                    RecentChats(),

                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }