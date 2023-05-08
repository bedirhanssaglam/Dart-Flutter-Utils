import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetHelper {
  Widget platformIndicator() {
    return Center(
      child: Platform.isIOS
          ? const CupertinoActivityIndicator()
          : const CircularProgressIndicator(),
    );
  }

  IconButton platformBackButton({
    required VoidCallback onPressed,
    Color? color = Colors.black,
  }) {
    return Platform.isIOS
        ? IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_back_ios,
              color: color,
            ),
          )
        : IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_back,
              color: color,
            ),
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

  closePopup(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}
