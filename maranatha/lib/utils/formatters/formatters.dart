import 'package:intl/intl.dart';

class MaranathaFormatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  /// Format international numbers like +233xxxxxxxxx to (+233) xx xx xx xx...
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length < 3) return phoneNumber;

    // Country code assumed to be the first 2–3 digits (adjust as needed)
    String countryCode = '+${digitsOnly.substring(0, 3)}';
    digitsOnly = digitsOnly.substring(3);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    for (int i = 0; i < digitsOnly.length; i += 2) {
      int end = (i + 2 < digitsOnly.length) ? i + 2 : digitsOnly.length;
      formattedNumber.write(digitsOnly.substring(i, end));
      if (end != digitsOnly.length) formattedNumber.write(' ');
    }

    return formattedNumber.toString();
  }
}
