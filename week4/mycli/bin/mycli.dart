import 'package:mycli/mycli.dart';

void main(List<String> arguments) {
  final leap = Leap();
  int year = 2020; // You can change this year for testing
  print('Is $year a Leap year =  ${leap.leapYear(year)}');
}
