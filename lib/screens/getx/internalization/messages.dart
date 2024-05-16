import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';


class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello':"Hello",
    },
    'hi_IN': {
      'hello':"Salam",
    },
    'fr_FR': {
      'hello':"Banjour",
    },
  };
}