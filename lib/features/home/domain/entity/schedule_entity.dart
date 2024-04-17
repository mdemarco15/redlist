import 'package:crow/crow.dart';

class ScheduleEntity extends Entity {
  const ScheduleEntity({this.time, this.days});

  final String? time;
  final List<String>? days;

}
