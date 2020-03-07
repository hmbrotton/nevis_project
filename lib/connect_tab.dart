import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConnectTab extends StatefulWidget {
  @override
  _ConnectTabState createState() {
    return _ConnectTabState();
  }
}

class _ConnectTabState extends State<ConnectTab> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Connect'),
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
                          "Connect!"
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