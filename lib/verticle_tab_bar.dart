import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verticle Tab Bar Sample'),
      ),
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.white,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: [
              NavigationRailDestination(
                icon: Text(
                  "Service Items",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                selectedIcon: Center(
                    child: Text(
                  "Service Items",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
                label: Text(""),
              ),
              NavigationRailDestination(
                icon: Text(
                  "Service Description",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                selectedIcon: Text(
                  "Service Description",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Text(
                  "Service Tasks",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                selectedIcon: Text(
                  "Service Tasks",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                label: Text(''),
              ),
            ],
          ),
          VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
              child: (_selectedIndex == 0)
                  ? Container(
                      child: Center(child: Text("Service Items")),
                    )
                  : (_selectedIndex == 1)
                      ? Container(
                          child: Center(child: Text("Service Description")),
                        )
                      : (_selectedIndex == 2)
                          ? Container(
                              child: Center(child: Text("Service Tasks")),
                            )
                          : Container())
        ],
      ),
    );
  }
}
