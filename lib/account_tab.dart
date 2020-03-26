import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() {
    return _AccountTabState();
  }
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Profile'),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 650,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[100],
                      child: Text(
                          "Account!"
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}