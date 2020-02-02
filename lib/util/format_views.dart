import 'package:intl/intl.dart';

String formatViews(int views) {
  final formatter = NumberFormat.compact();
  return formatter.format(views);
}
