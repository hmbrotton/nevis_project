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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Image.network('https://berryworld.imgix.net/consumerAssets/Strawberry-transparent1.png?auto=compress%2Cformat&fit=clip&w=800&w=800&auto=format&auto=compress'),
                            title: Text('News is Happening!'),
                            subtitle: Text('Hannah Brotton'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: SizedBox(
                              width: 55,
                              height: 55,
                              child: Image.network('https://lh3.googleusercontent.com/proxy/LtJUe580FP71nhzelcDK_rPlzvRG91kz5jMLY4jUojmY7u3MRnXrq5D8rmyNLb4sz7nM8wKVEKr2OpXodA99HLYsnJ7i2qR4_UTeTvclIowd7sG5934jHInD'),
                            ),
                            title: Text('This just in: News'),
                            subtitle: Text('Cameron Howell'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: SizedBox(
                              width: 55,
                              height: 55,
                              child: Image.network('https://lh3.googleusercontent.com/proxy/NrkoYcNtqU51TsUHfGQu-xX6T1vpbWy7KAUyEN3oPnCJi9puu38rmBtor2GZ46KQ0urfZvcs5X0QDm4uINe9kfyCZlbZhoEziw1lx6oZwXZyKi7MC6PelpXs'),
                            ),
                            title: Text('OMG! News!'),
                            subtitle: Text('Batbold Gankhuyag'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                /*child: Row(
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
                ),*/
              ),
            ],
          ),
        ),
      ],
    );
  }
}