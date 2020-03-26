import 'package:flutter/cupertino.dart';

import 'account_tab.dart';
import 'connect_tab.dart';
import 'home_tab.dart';
import 'invest_tab.dart';
import 'news_tab.dart';

class TabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: TabBarPage(),
    );
  }
}

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            title: Text('News'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            title: Text('Invest'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.conversation_bubble),
            title: Text('Connect'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            title: Text('Profile'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: NewsTab(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: InvestTab(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: HomeTab(),
              );
            });
            break;
          case 3:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ConnectTab(),
              );
            });
            break;
          case 4:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: AccountTab(),
              );
            });
            break;
        }
        return returnValue;
      },
    );
  }
}