// Copyright (c) 2024 mathru. All rights reserved.

/// Masamune plugin library for local PUSH notification. Only mobile can handle.
///
/// To use, import `package:masamune_notification_local/masamune_notification_local.dart`.
///
/// [mathru.net]: https://mathru.net
/// [YouTube]: https://www.youtube.com/c/mathrunetchannel
library masamune_notification_local;

// Package imports:
import 'package:masamune/masamune.dart';
import 'package:masamune_notification/masamune_notification.dart';

export 'package:masamune_notification/masamune_notification.dart';

// Project imports:
part 'adapter/mobile_local_notification_masamune_adapter.dart';
