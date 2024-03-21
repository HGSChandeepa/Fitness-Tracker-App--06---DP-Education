import 'package:flutter/material.dart';
import 'package:responsive/widgets/activity_details.dart';
import 'package:responsive/widgets/bar_graph_widget.dart';
import 'package:responsive/widgets/header_widget.dart';
import 'package:responsive/widgets/line_chart.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            HeaderWidget(),
            SizedBox(
              height: 15,
            ),
            ActivityDetails(),
            SizedBox(
              height: 15,
            ),
            LineChartCard(),
            SizedBox(
              height: 15,
            ),
            BarGraphCard(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
