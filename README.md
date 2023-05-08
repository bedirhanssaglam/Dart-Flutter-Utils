# Dart & Flutter Utils

This repository contains some extensions, functions, control structures and more that you can use in your projects.

---

## SAMPLES

# Strings

```dart
  String toShortString(String value, {int countCharacter = 10}) {
    return value.length > countCharacter
        ? "${value.substring(0, countCharacter)}..."
        : value;
  }

 extension StringValidatorExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrNoEmpty => this != null && this!.isNotEmpty;
}
```

## Validate Operations

You can check some user inputs.

```dart
 String? validateEmail(String value) {
    String pattern = StringConstants.emailRegex;
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return StringConstants.emailError;
    } else {
      return null;
    }
  }

  String? validateName(String value) {
    if (_isNumeric(value)) {
      return StringConstants.invalidName;
    }
    if (value.isEmpty) {
      return StringConstants.noName;
    }
    return null;
  }
```

### Widget Utils

You will want to use platform-specific widgets or ready-made widgets

```dart
 Widget platformIndicator() {
    return Center(
      child: Platform.isIOS
          ? const CupertinoActivityIndicator()
          : const CircularProgressIndicator(),
    );
  }
  
   Icon platformForwardIcon() {
    return Platform.isIOS
        ? const Icon(Icons.arrow_forward_ios)
        : const Icon(Icons.arrow_forward);
  }

  Widget errorText(String errorMessage) {
    return Center(child: Text(errorMessage));
  }
  
```

### Status Code Extensions

Simple extensions for HTTP requests.

```dart
  extension StatusCodeExtension on int {
  bool get isSuccessful => this >= 200 && this < 300;
  bool get isRedirection => this >= 300 && this < 400;
  bool get isClientError => this >= 400 && this < 500;
  bool get isServerError => this >= 500 && this < 600;
}
```

### Navigation Utils

```dart
  extension NavigatorExtension on BuildContext {
  NavigatorState get navigator => Navigator.of(this);
}

  closePopup(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
```

### Num Extension

```dart
extension EmptyPadding on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}

extension IsNotZeroExtension on num {
  bool get isNotZero => this != 0;
}
```

### Date Format

```dart
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
```

### Typedefs

```dart
typedef ValidatorFunction = String? Function(String?)?;
typedef SavedFunction = Function(String?)?;
typedef DoubleFunction = Function(double)?;

typedef NetworkCallBack = void Function(NetworkResultEnums result);
typedef JsonMap = Map<String, dynamic>;
```

### Stateful Mixin

This extension only uses to draw the border.

```dart
mixin StatefulMixin<T extends StatefulWidget> on State<T> {
  ColorScheme get colorScheme => Theme.of(context).colorScheme;
  TextTheme get textTheme => Theme.of(context).textTheme;
  ThemeData get themeData => Theme.of(context);
  AppBarTheme get appBarTheme => Theme.of(context).appBarTheme;

  Size get screenSize => MediaQuery.of(context).size;
  EdgeInsets get viewInsets => MediaQuery.of(context).viewInsets;
  EdgeInsets get viewPadding => MediaQuery.of(context).viewPadding;
  EdgeInsets get mediaQueryPadding => MediaQuery.of(context).padding;
  MediaQueryData get mediaQueryData => MediaQuery.of(context);

  double get statusBarHeight => mediaQueryPadding.top;
  double get bottomHeight => mediaQueryPadding.bottom;
  double get keyboardHeight => mediaQueryData.viewInsets.bottom;
}
```

### Map Utils

```dart
   static Future<bool> launchQuery(String query) {
    return launchUrl(createQueryUri(query));
  }

  static Future<bool> launchCoordinates(double latitude, double longitude,
      [String? label]) {
    return launchUrl(createCoordinatesUri(latitude, longitude, label));
  }
```

### Singleton Mixin

This extension can be used to create native widgets.

```dart
mixin SingletonMixin {
  WidgetsBinding get widgetsBinding => WidgetsBinding.instance;
}

```

## Project Directory Structure

```      
📂 lib
   📂 utils   
    📂 constants
       📄 string_constants.dart  
    📂 enums
       📄 country_enums.dart
       📄 network_result_enums.dart
    📂 extensions
       📄 color_extensions.dart
       📄 context_extensions.dart
       📄 list_extensions.dart
       📄 num_extensions.dart
       📄 status_code_extensions.dart
       📄 string_extensions.dart
       📄 widget_extensions.dart
    📂 helpers
       📄 date_format_helper.dart
       📄 launcher_utils.dart
       📄 map_utils.dart
       📄 string_utils.dart
       📄 typedefs.dart
       📄 validate_operations.dart
       📄 widget_helper.dart
    📂 mixins
       📄 loading_state_mixin.dart
       📄 safe_context_mixin.dart
       📄 schedule_mixin.dart
       📄 singleton_mixin.dart
       📄 state_mixin.dart
       📄 stateful_mixin.dart
```
