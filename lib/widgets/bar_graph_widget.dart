import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive/constants/colors.dart';
import 'package:responsive/data/bar_graph_data.dart';
import 'package:responsive/models/graph_model.dart';
import 'package:responsive/utils/responsive.dart';
import 'package:responsive/widgets/custum_card.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    //bar graph data
    final barGraphData = BarGraphData();

    return GridView.builder(
      itemCount: barGraphData.data.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12.0,
        childAspectRatio: 5 / 4,
      ),
      itemBuilder: (context, index) {
        //render inside a custum card
        return CustomCard(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  barGraphData.data[index].label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: BarChart(
                  // responsible to draw the graph
                  BarChartData(
                    barGroups: _chartGroups(
                      points: barGraphData.data[index].graph,
                      color: barGraphData.data[index].color,
                    ),

                    //remove the border in the bar graph
                    borderData: FlBorderData(border: const Border()),

                    //the grid
                    // gridData: const FlGridData(show: false),

                    //for the titles
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                barGraphData.label[value.toInt()],
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups(
      {required List<GraphModel> points, required Color color}) {
    //create a list from the data points that returns a BarChartGroupData
    //her the .toList() methode will conver the maped data to a list
    return points
        .map(
          (point) => BarChartGroupData(
            //for the x axis points  , as the bar graph will do not have y valuse ( this shows bars on  axis)
            x: point.x.toInt(),

            // the bars  on the x axis
            barRods: [
              BarChartRodData(
                // this will renders the bars fromY to toY ( bottom is formY and the top is the toY values here   if twe do not explicitly say the bottomY it wii set to 0  )
                toY: point.y,

                //bar width
                width: 20,

                //if the height of the y is greater than 4 , show the opacity to 100%
                color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),

                //radius of the to vertices
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              )
            ],
          ),
        )
        .toList();
  }
}
