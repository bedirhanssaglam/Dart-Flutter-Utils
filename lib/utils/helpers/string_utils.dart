import 'typedefs.dart';

class StringUtils {
  String enumToString(dynamic input) {
    return input.toString().split('.').last;
  }

  String enumToStringSingle(dynamic input) {
    return enumToString(input).split(RegExp('[A-Z]')).first;
  }

  String plural({required String text, int? value}) {
    if (value == 1) {
      return text;
    } else {
      return '$value ${text}s';
    }
  }

  String toShortString(String value, {int countCharacter = 10}) {
    return value.length > countCharacter
        ? "${value.substring(0, countCharacter)}..."
        : value;
  }

  String toShortDoubleNumber(double value) {
    String number = value.toString();
    return "${number.split(".").first}.${number.split(".")[1].substring(0, 2)}";
  }

  String printMap(JsonMap map) {
    String str = '';
    map.forEach((key, value) => str += '$key: ${value.toString}, ');
    return str;
  }
}
