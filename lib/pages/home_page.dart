import 'package:flutter/material.dart';
import 'package:responsive/widgets/dashboad.dart';
import 'package:responsive/widgets/side_menu.dart';
import 'package:responsive/widgets/summary_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              child: SideMenu(),
            ),
          ),
          Expanded(
            flex: 7,
            child: SizedBox(
              child: DashboardPage(),
            ),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: SummaryWidget(),
              )),
        ],
      )),
    );
  }
}
