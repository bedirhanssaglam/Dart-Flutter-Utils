import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_utils/utils/constants/string_constants.dart';

extension StringExtensions on String {
  String get capitalize {
    return this[0].toUpperCase() + substring(1);
  }

  String getFirstWord() {
    List<String> wordList = split("");

    if (wordList.isNotEmpty) {
      return wordList[0];
    } else {
      return ' ';
    }
  }
}

extension StringValidatorExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrNoEmpty => this != null && this!.isNotEmpty;
}

extension LocalizationExtension on String {
  String get locale => this.tr();
}

extension ImageExtension on String {
  bool isImageUrl() {
    final imageUrlRegex = RegExp(StringConstants.imageUrlRegex);
    return imageUrlRegex.hasMatch(this);
  }
}

extension ImagePathExtension on String {
  String get toSvg => 'asset/icons/$this.svg';
  String get toPng => 'asset/images/$this.png';
  String get toJpg => 'asset/images/$this.jpg';
}

extension NumberParsing on String {
  int get parseInt => int.parse(this);

  int? get tryParseInt => int.tryParse(this);

  double get parseDouble => double.parse(this);

  double? get tryParseDouble => double.tryParse(this);
}
