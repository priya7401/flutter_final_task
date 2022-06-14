import 'package:intl/intl.dart';

class DateFormatHelper {
  static String formatInviteDate(String time) {
    final DateTime time = DateTime.parse(time);
    return DateFormat("dd/MM/yyyy").format(time.toLocal());
  }

  static String formatDateInQuery({required String time}) {
    final DateTime time = DateTime.parse(time);
    return DateFormat.yMMMd('en_US').format(time);
  }

  static String formatDOBDate({required String time}) {
    final DateTime time = DateTime.parse(time);
    return DateFormat("dd-MM-yyyy").format(time);
  }

  static String formatDateWithTimeStamp({required String time}) {
    final DateTime time = DateTime.parse(time);
    return DateFormat('jm').format(time.toLocal());
  }
}
