// Copyright 2023 mathru. All rights reserved.

/// Firebase plugin for katana_auth. A package to facilitate switching between Local and Firebase authentication implementations.
///
/// To use, import `package:katana_auth_firebase/katana_auth_firebase.dart`.
///
/// [mathru.net]: https://mathru.net
/// [YouTube]: https://www.youtube.com/c/mathrunetchannel
library katana_auth_firebase;

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:katana/katana.dart';
import 'package:katana_auth/katana_auth.dart';
import 'package:katana_firebase/katana_firebase.dart';
import 'package:shared_preferences/shared_preferences.dart';

export 'package:katana_auth/katana_auth.dart';
export 'package:katana_firebase/katana_firebase.dart';

part 'adapter/firebase_auth_adapter.dart';
