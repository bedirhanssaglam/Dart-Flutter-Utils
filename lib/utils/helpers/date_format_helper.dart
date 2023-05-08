import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart' show immutable;
import '../enums/country_enums.dart';

@immutable
class DateFormatHelper {
  const DateFormatHelper._();

  static DateFormat toNameOfMonth({bool fullName = false}) {
    final DateFormat format = fullName
        ? DateFormat.MMMM(CountryEnums.tr.languageCode)
        : DateFormat.MMM(CountryEnums.tr.languageCode);
    return format;
  }

  static DateFormat toFullNameOfMonth() {
    final DateFormat format = DateFormat.MMMM(CountryEnums.tr.languageCode);
    return format;
  }

  static DateFormat toYear() {
    final DateFormat format = DateFormat.y(CountryEnums.tr.languageCode);
    return format;
  }

  static DateFormat toDay() {
    final DateFormat format = DateFormat.E(CountryEnums.tr.languageCode);
    return format;
  }

  static DateFormat toIntDay() {
    final DateFormat format = DateFormat.d(CountryEnums.tr.languageCode);
    return format;
  }

  static DateFormat dateFormat() {
    return DateFormat.yMd(CountryEnums.tr.languageCode);
  }

  static DateFormat yM() {
    return DateFormat.yMMMM(CountryEnums.tr.languageCode);
  }

  static DateFormat timeFormat() {
    return DateFormat.jm(CountryEnums.tr.languageCode);
  }

  static DateFormat dateTimeFormat() {
    return DateFormat.yMEd(CountryEnums.tr.languageCode)
        .addPattern("- ${DateFormat.jms().pattern!}");
  }

  static bool isSameDay(DateTime firstTime, DateTime secondTime) {
    return firstTime.year == secondTime.year &&
        firstTime.month == secondTime.month &&
        firstTime.day == secondTime.day;
  }
}
