import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'auth.dart';

class Global {
  static AuthType currentAuth;
  static GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  static init() {
    updateAuthType(AuthType.Anonymous);
  }

  static updateAuthType(AuthType auth) {
    currentAuth = auth;
  }
}
