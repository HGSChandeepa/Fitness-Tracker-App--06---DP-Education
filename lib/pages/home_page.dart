import 'package:flutter/material.dart';
import 'package:responsive/utils/responsive.dart';
import 'package:responsive/widgets/dashboad.dart';
import 'package:responsive/widgets/side_menu.dart';
import 'package:responsive/widgets/summary_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenu(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop)
            const Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              ),
            ),
          const Expanded(
            flex: 7,
            child: SizedBox(
              child: DashboardPage(),
            ),
          ),
          if (isDesktop)
            const Expanded(
                flex: 3,
                child: SizedBox(
                  child: SummaryWidget(),
                )),
        ],
      )),
    );
  }
}
