import 'package:intl/intl.dart';

class DateUtil {
  static String dynamicTimestampToDateTime(dynamic dateTime) {
    DateTime y = DateTime.parse(dateTime);
    final DateFormat formatter = DateFormat('dd.MM.yyyy, HH:mm');
    final String formatted = formatter.format(y);
    return formatted;
  }
}
