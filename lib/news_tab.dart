import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsTab extends StatefulWidget {
  @override
  _NewsTabState createState() {
    return _NewsTabState();
  }
}

class _NewsTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('News'),
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
                          "News!"
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