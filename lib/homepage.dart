import 'package:flutter/material.dart';
import 'package:flutter_tab_bar_widget/tabs/first_tab.dart';
import 'package:flutter_tab_bar_widget/tabs/second_tab.dart';
import 'package:flutter_tab_bar_widget/tabs/third_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("T A B  B A R"),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // 1st Tab
                  FirstTab(),

                  // 2ND TAB
                  SecondTab(),

                  // 3RD TAB
                  ThirdTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
