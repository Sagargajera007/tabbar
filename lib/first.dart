import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  List<Widget> l = [first(), second(), third()];
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text("Chat")),
                  PopupMenuItem(child: Text("Status")),
                  PopupMenuItem(child: Text("Call"))
                ],
              )
            ],
            bottom: TabBar(tabs: [
              Tab(
                child: Text("Chat"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Call"),
              )
            ]),
          ),
          body: TabBarView(children: l),
          // body: l[cnt],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: cnt,
              onTap: (value) {
                setState(() {
                  cnt = value;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.list), label: "Status"),
                BottomNavigationBarItem(icon: Icon(Icons.call), label: "call")
              ]),
        ));
  }
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
}

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
    );
  }
}

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
    );
  }
}
