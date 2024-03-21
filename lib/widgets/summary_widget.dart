import 'package:flutter/material.dart';
import 'package:responsive/constants/colors.dart';
import 'package:responsive/widgets/pie_chart_widget.dart';
import 'package:responsive/widgets/shedule_widget.dart';
import 'package:responsive/widgets/summary_details.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: cardBackgroundColor,
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Chart(),
            Text(
              'Summary',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            SummaryDetails(),
            SizedBox(height: 40),
            ScheduledWidget(),
          ],
        ),
      ),
    );
  }
}

class Scheduled {}
