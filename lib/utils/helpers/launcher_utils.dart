import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherUtils {
  static String? getSocialLinks(String? url) {
    if (url != null && url.isNotEmpty) {
      url = url.contains("https://www") || url.contains("http://www")
          ? url
          : url.contains("www") &&
                  (!url.contains('https') && !url.contains('http'))
              ? 'https://$url'
              : 'https://www.$url';
    } else {
      return null;
    }
    log('Launching URL : $url');
    return url;
  }

  static launchURL(String url) async {
    if (url == "") {
      return;
    }
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchURL(url);
    } else {
      log('Could not launch $url');
    }
  }

  static void copyToClipBoard({
    required BuildContext context,
    required String text,
    required String message,
  }) {
    var data = ClipboardData(text: text);
    Clipboard.setData(data);
  }

  static Locale getLocale(BuildContext context) {
    return Localizations.localeOf(context);
  }
}
