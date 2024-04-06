import 'package:responsive/models/health_activity_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(
      icon: 'assets/icons/burn.png',
      value: "230",
      title: "Water Level",
    ),
    HealthModel(
      icon: 'assets/icons/steps.png',
      value: "7.8k",
      title: "Miles  Steps",
    ),
    HealthModel(
      icon: 'assets/icons/distance.png',
      value: "340m",
      title: "Covered distance",
    ),
    HealthModel(
      icon: 'assets/icons/sleep.png',
      value: "7h48m",
      title: "Sleep",
    ),
  ];
}
