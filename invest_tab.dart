import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InvestTab extends StatefulWidget {
  @override
  _InvestTabState createState() {
    return _InvestTabState();
  }
}

class _InvestTabState extends State<InvestTab> {
  Map<String, double> myMap = new Map();

  @override
  void initState() {
    super.initState();
    myMap.putIfAbsent("Financial Technology", () => 2.5);
    myMap.putIfAbsent("Healthcare", () => 3.5);
    myMap.putIfAbsent("Agriculture", () => 4);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Invest'),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                child: Card(
                  child: ListTile(
                    title: Text("My Investments"),
                  ),
                ),
              ),
              Container(
                child: PieChart(
                  dataMap: myMap,
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Card(
                      child: ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.dollarSign,
                          color: Colors.red[300],
                        ),
                        title: Text("Financial Technology"),
                        subtitle: Text("Click for more info"),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.stethoscope,
                          color: Colors.blue[300],
                        ),
                        title: Text("Healthcare"),
                        subtitle: Text("Click for more info"),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.seedling,
                          color: Colors.green[300],
                        ),
                        title: Text("Agriculture"),
                        subtitle: Text("Click for more info"),
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ],
    );
  }
}