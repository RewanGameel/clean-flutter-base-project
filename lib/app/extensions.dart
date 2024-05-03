import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mime/mime.dart';

import 'constants.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return Constants.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return Constants.zero;
    } else {
      return this!;
    }
  }
}

extension NonNullDouble on double? {
  double orZero() {
    if (this == null) {
      return Constants.zeroDec;
    } else {
      return this!;
    }
  }
}

extension NonNullBoolean on bool? {
  bool orBool() {
    if (this == null) {
      return Constants.isEmpty;
    } else {
      return this!;
    }
  }
}

extension NonNullMap on Map<String, bool>? {
  Map<String, bool> orEmpty() {
    if (this == null) {
      return {};
    } else {
      return this!;
    }
  }
}

extension ColorExtension on String {
  Color toColor() {
    String colorString = this;
    if (isEmpty) {
      return Colors.white;
    }
    if (colorString.startsWith("#")) {
      colorString = colorString.substring(1);
    }
    if (colorString.length == 6) {
      colorString = "FF$colorString";
    }
    return Color(int.parse(colorString, radix: 16));
  }
}

extension ColorsExtension on Color {
  String toHexString() {
    // String hexAlpha = alpha.toRadixString(16).padLeft(2, '0');
    String hexRed = red.toRadixString(16).padLeft(2, '0');
    String hexGreen = green.toRadixString(16).padLeft(2, '0');
    String hexBlue = blue.toRadixString(16).padLeft(2, '0');
    return '$hexRed$hexGreen$hexBlue';
  }
}

extension FirstLettersExtension on String {
  String extractFirstLetters() {
    List<String> words = split(" ");
    String result = "";

    for (String word in words) {
      if (word.isNotEmpty) {
        result += "${word[0].toUpperCase()}.";
      }
    }

    if (result.isNotEmpty) {
      result = result.substring(0, result.length - 1);
    }

    return result;
  }
}

extension CardTypeExtension on String {
  String getCardType() {
    RegExp re = RegExp(r'^4[0-9]{12}(?:[0-9]{3})?$');
    if (re.hasMatch(this)) {
      return "visa";
    }

    re = RegExp(r'^(34|37)');
    if (re.hasMatch(this)) {
      return "amex";
    }

    re = RegExp(r'^5[1-5]');
    if (re.hasMatch(this)) {
      return "mastercard";
    }

    re = RegExp(r'^6011');
    if (re.hasMatch(this)) {
      return "discover";
    }

    re = RegExp(r'^9792');
    if (re.hasMatch(this)) {
      return "troy";
    }

    return "unknown"; // If no pattern matches, return "unknown".
  }
}

extension StringExtension on String {
  String getLastFourDigits() {
    // Ensure the string has at least 4 characters
    if (length >= 4) {
      return substring(length - 4);
    } else {
      // Handle the case when the string has less than 4 characters
      return this;
    }
  }
}

extension FileExtension on File {
  String convertToBase64() {
    final bytes = readAsBytesSync();
    String base64Str = base64Encode(bytes);
    String? mimeType = lookupMimeType(this.path);
    return 'data:$mimeType;base64,$base64Str';
  }
}
