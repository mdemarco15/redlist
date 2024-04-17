import 'package:intl/intl.dart';


bool isExpiring(String date) {
  DateFormat formattedDateTime = DateFormat.yMMMd('it');
  DateTime expiringDate = formattedDateTime.parse(date);

  DateTime now = DateTime.now();
  Duration difference = expiringDate.difference(now);
  Duration twoWeeks = const Duration(days: 14);

  return difference <= twoWeeks;
}

String formatPrice(int? price) {
  if (price != null) {
    final NumberFormat formatter = NumberFormat("#,##0.00", "en_US");
    return formatter.format(price / 100);
  } else {
    return '';
  }
}

