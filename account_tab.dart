import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() {
    return _AccountTabState();
  }
}

class _AccountTabState extends State<AccountTab> {
  bool _FTSetting = true;
  bool _HCSetting = true;
  bool _AGSetting = true;

  //Form Variables
  String _location;
  FormFieldSetter<String> onSaved;
  String initialValue = "Cupertino";
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
                decoration: myBoxDecorationTitle(),
                child: Text(
                  "My Interests",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 50,
                decoration: myBoxDecorationObject(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.dollarSign,
                      color: Colors.black26,
                    ),
                    Text("   Financial Technology"),
                    CupertinoSwitch(
                      value: _FTSetting,
                      onChanged: (bool value) { setState(() { _FTSetting = value; }); },
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                decoration: myBoxDecorationObject(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.stethoscope,
                      color: Colors.black26,
                    ),
                    Text("   Healthcare"),
                    CupertinoSwitch(
                      value: _HCSetting,
                      onChanged: (bool value) { setState(() { _HCSetting = value; }); },
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                decoration: myBoxDecorationObject(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.seedling,
                      color: Colors.black26,
                    ),
                    Text("   Agriculture"),
                    CupertinoSwitch(
                      value: _AGSetting,
                      onChanged: (bool value) { setState(() { _AGSetting = value; }); },
                    ),
                  ],
                ),
              ),
              Container(
                decoration: myBoxDecorationTitle(),
                child: Text(
                  "My Information",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Scaffold(
                  body: Center(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Location',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Scaffold(
                  body: Center(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Ocupation',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: myBoxDecorationTitle(),
                child: Text(
                  "My Banking Information",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 80,
                width: 100,
                child: Scaffold(
                  body: Center(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Bank Name',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: 100,
                child: Scaffold(
                  body: Center(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Account Number',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: 100,
                child: Scaffold(
                  body: Center(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Routing Number',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

BoxDecoration myBoxDecorationTitle() {
  return BoxDecoration(
    //border: Border.all(
      //width: 1, //
    //),
    color: Colors.black26,
  );
}

BoxDecoration myBoxDecorationObject() {
  return BoxDecoration(
    border: Border.all(
      width: 1, //
      color: Colors.black26,
    ),
    color: Colors.black12,
  );
}